import numpy as np
import random
from scipy.stats import multivariate_normal
from cluster.cluster import TMatrix

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

    def membership_prob(self, point):
        """
        Computes the probability that the given point is in the ith gaussian for every i, using the current values of the parameters.
        """
        pdfs = np.array([self.normal_pdf(point, self.mu[i], self.sigma[i]) for i in range(self.nk)])
        self.pdfs = pdfs
        denominator = np.dot(self.tau, pdfs)
        return np.multiply(pdfs, self.tau)/denominator

    def normal_pdf(self, x, mu, sigma):
        sigma_inv = np.linalg.inv(sigma)
        denominator = np.sqrt(np.linalg.det(2*np.pi*sigma))
        return np.exp(-0.5*np.dot(np.dot(x - mu, sigma_inv), x - mu))/denominator

    def _update_tau(self, expects):
        """
        Compute the new values of tau after an iteration.
        """
        self.tau = expects.mean(axis=0)

    def _update_mu(self, expects):
        for k in range(self.nk):
            self.mu[k] = np.multiply(expects[:, k], self.datapoints).sum(axis=0)/expects[:, k].sum()
        
    def _update_sigma(self, expects):
        for k in range(self.nk):
            sum_terms = [expects[i, k]*np.outer(self.datapoints[i, :] - self.mu, self.datapoints[i, :] - self.mu) for i in range(self.nPoints)]
            self.sigma[k] = sum_terms.sum(axis=0)/expects[:, k].sum()
            
    def update(self):
        expectation = np.array([self.membership_prob(point) for point in self.datapoints])
        self._update_tau(expectation)
        self._update_mu(expectation)
        self._update_sigma(expectation)
        
    def iterate(self, N):
        for i in range(N):
            self.update()

    def classify(self):
        expectation = np.array([self.membership_prob(point) for point in self.datapoints])
        return np.array([np.argmax(probs) for probs in expectation])

