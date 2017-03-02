import numpy as np
import random
import time
from scipy.stats import multivariate_normal
from cluster import cluster as cl

class k_means:

    def __init__(self, datapoints, nk):
        """
        Parameters
        ----------
        datapoints : (nPoints, nDims) array
            Matrix of data points
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
        self.means = np.array([self.datapoints[self.clusters == k, :].mean(axis=0) for k in range(self.nk)])

    def iterate(self, N):
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
        """
        self.nPoints = datapoints.shape[0]
        self.nDims = datapoints.shape[1]
        self.datapoints = datapoints
        self.nk = nk
        self.init_assign()

    def init_assign(self):
        self.tau = np.empty(self.nk)
        self.mu = np.empty((self.nk, self.nDims))
        self.sigma = np.empty((self.nk, self.nDims, self.nDims))
        for k in range(self.nk):
            self.tau[k] = 1.0/self.nk
            self.mu[k] = k/self.nk * np.ones(self.nDims) #some level of dispersion of starting points
            self.sigma[k] = np.identity(self.nDims)*500

    def _update_tau(self, expects):
        """
        Compute the new values of tau after an iteration.
        """
        self.tau = expects.mean(axis=0)

    def _update_mu(self, expects):
        for k in range(self.nk):
            self.mu[k] = np.multiply(expects[:, k][:, None], self.datapoints).sum(axis=0)/expects[:, k].sum()
        
    def _old_update_sigma(self, expects):
        print('Start sigma update: ', time.ctime())
        for k in range(self.nk):
            sum_terms = np.array([expects[i, k]*np.outer(self.datapoints[i, :] - self.mu[k], self.datapoints[i, :] - self.mu[k]) for i in range(self.nPoints)])
            self.sigma[k] = sum_terms.sum(axis=0)/expects[:, k].sum()
        print('end sigma update: ', time.ctime())

    def _update_sigma(self, expects):
        self.sigma = np.array(cl.sigma_update(self.datapoints, self.mu, expects))
            
    def update(self):
        sigma_inv = np.array([np.linalg.inv(sigma) for sigma in self.sigma])
        denoms = np.array([np.linalg.det(2.0*np.pi*sigma) for sigma in self.sigma])
        expectation = np.array(cl.tmatrix(self.datapoints, self.tau, self.mu, sigma_inv, denoms))
        self._update_tau(expectation)
        self._update_mu(expectation)
        self._update_sigma(expectation)
        
    def iterate(self, N):
        for i in range(N):
            self.update()

    def classify(self, points=None):
        if points==None:
            points = self.datapoints
        sigma_inv = np.array([np.linalg.inv(sigma) for sigma in self.sigma])
        denoms = np.array([np.linalg.det(2.0*np.pi*sigma) for sigma in self.sigma])
        expectation = np.array(cl.tmatrix(points, self.tau, self.mu, sigma_inv, denoms))
        return np.array([np.argmax(probs) for probs in expectation])
    
    def loglikelihood(self, points=None):
        if points==None:
            points = self.datapoints
        classified = self.classify(points)
        logL = 0 #initialize the loglikelihood
        #for every cluster
        for k in range(self.kn):
            x = points[classified == k] #select the points in the cluster
            mean = self.mu[k]
            sigma = self.sigma[k]
            sigma_inv = np.linalg.inv(sigma)
            denom = np.linalg.det(2.0*np.pi*sigma)
            #increment loglikelihood by log pdf of the points in the cluster
            logL += np.log(cl.normalPdf(x, mean, sigma_inv, denom)).sum()
            
        return logL
