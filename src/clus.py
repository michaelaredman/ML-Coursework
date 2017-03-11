import numpy as np
import random
import time
import copy
from scipy.stats import multivariate_normal
from cluster import cluster as cl

class KMeans:

    def __init__(self, datapoints, nk):
        """
        Parameters
        ----------
        datapoints : (nPoints, nDims) array
            Matrix of data points
        nk : integer
            Number of clusters
        """
        self.nPoints = datapoints.shape[0]
        self.nDims = datapoints.shape[1]
        self.datapoints = datapoints
        self.nk = nk
        self.init_assign()

    def init_assign(self):
        """
        Assign each datapoint to a random cluster and calculate the cluster means
        """
        self.clusters = np.array([random.choice(np.arange(0, self.nk)) for i in range(self.nPoints)])
        self.update()

    def assignment(self):
        """
        Assign points to the cluster with mean closest to their own
        """
        squared_distances = [[np.dot(point - cMean, point - cMean) for cMean in self.means] for point in self.datapoints]
        self.clusters = np.array([np.argmin(distances) for distances in squared_distances])

    def update(self):
        """
        Update the values of the means to be the same 
        """
        self.means = np.array([self.datapoints[self.clusters == k, :].mean(axis=0) for k in range(self.nk)])

    def iterate(self, N):
        """
        Compute N iterations of the K Means algorithm
        """
        for i in range(N):
            self.assignment()
            self.update()

class GaussianMixture:

    def __init__(self, datapoints, nk):
        """
        Parameters
        ----------
        datapoints : (nPoints, nDims) array
            Matrix of data points
        nk : integer
            Number of mixture components
        """
        self.nPoints = datapoints.shape[0]
        self.nDims = datapoints.shape[1]
        self.datapoints = datapoints
        self.nk = nk
        self.init_assign()

    def init_assign(self):
        """
        Assign initial starting values to the parameters of the model
        """
        self.tau = np.empty(self.nk)
        self.mu = np.empty((self.nk, self.nDims))
        self.sigma = np.empty((self.nk, self.nDims, self.nDims))
        points = copy.deepcopy(self.datapoints) #copy the datapoints as shuffle works in-place
        np.random.shuffle(points)
        for k in range(self.nk):
            self.tau[k] = 1.0/self.nk #start at an equal number of points per cluster
            self.mu[k] = points[k, :] #initial means at a random selection of the points
            #initial covariance matricies diagonal with large variance
            self.sigma[k] = np.identity(self.nDims)*500

    def _update_tau(self, expects):
        """
        Compute the new values of tau after an iteration. 
        NB: tau[k] is the proportion of points belonging to cluster k         
        """
        self.tau = expects.mean(axis=0)

    def _update_mu(self, expects):
        """
        Compute the new values of mu after an iteration.
        """
        for k in range(self.nk):
            self.mu[k] = np.multiply(expects[:, k][:, None], self.datapoints).sum(axis=0)/expects[:, k].sum()
        
    def _old_update_sigma(self, expects):
        """
        Depreciated
        -----------
        Compute the new values of the covariance matrix after an iteration.
        """
        print('Start sigma update: ', time.ctime())
        for k in range(self.nk):
            sum_terms = np.array([expects[i, k]*np.outer(self.datapoints[i, :] - self.mu[k], self.datapoints[i, :] - self.mu[k]) for i in range(self.nPoints)])
            self.sigma[k] = sum_terms.sum(axis=0)/expects[:, k].sum()
        print('end sigma update: ', time.ctime())

    def _update_sigma(self, expects):
        """
        Compute the new values of the covariance matrix after an iteration.
        Calls fortran code in cluster module for speed -- see _old_update_sigma for equivalent (but slower) Python code.
        """
        self.sigma = np.array(cl.sigma_update(self.datapoints, self.mu, expects))
            
    def update(self):
        """
        Compute new values of parameters by the EM-algorithm.

        Computed vairables
        ------------------
        expectation : (nPoints, nk) array 
            Conditional membership probabilites of each point for each mixture component.
        """
        sigma_inv = np.array([np.linalg.inv(sigma) for sigma in self.sigma])
        denoms = np.array([np.linalg.det(2.0*np.pi*sigma) for sigma in self.sigma])
        expectation = np.array(cl.tmatrix(self.datapoints, self.tau, self.mu, sigma_inv, denoms))
        self._update_tau(expectation)
        self._update_mu(expectation)
        self._update_sigma(expectation)
        
    def iterate(self, N):
        """
        Execute N iterations of the EM algorithm.
        """
        for i in range(N):
            self.update()

    def classify(self, points=None):
        """
        Assign each of the given points to its most likely cluster given the current parameter values.
        """
        if points==None:
            points = self.datapoints
        sigma_inv = np.array([np.linalg.inv(sigma) for sigma in self.sigma])
        denoms = np.array([np.linalg.det(2.0*np.pi*sigma) for sigma in self.sigma])
        expectation = np.array(cl.tmatrix(points, self.tau, self.mu, sigma_inv, denoms))
        return np.array([np.argmax(probs) for probs in expectation])
    
    def loglikelihood(self, points=None):
        """
        Compute the log-likelihood of the given points under the current parameter values.
        """
        if points is None:
            points = self.datapoints
        sigma_inv = np.array([np.linalg.inv(sigma) for sigma in self.sigma])
        denoms = np.array([np.linalg.det(2.0*np.pi*sigma) for sigma in self.sigma])
        expectation = np.array(cl.tmatrix(points, self.tau, self.mu, sigma_inv, denoms))
        self.expectation = expectation
        logL = 0 #initialize the loglikelihood
        #increment loglikelihood by log pdf of the points in the cluster
        for i, point in enumerate(points):
            prob = 0
            for k in range(self.nk):
                prob += expectation[i, k] * cl.normalpdf(point, self.mu[k], sigma_inv[k], denoms[k])
            logL += np.log(prob)
        return logL
