import numpy as np
import time
import random
from matplotlib import pyplot as plt
from scipy.optimize import minimize
import pandas as pd
import seaborn as sns
from cluster import cluster as cl
from clus import *
from scipy import misc

#plt.ion()

cells_image = misc.imread('../FluorescentCells.jpg', mode='RGB')
cells = cells_image.reshape(640*640, 3)

km2 = KMeans(cells, 2)
km3 = KMeans(cells, 3)
km4 = KMeans(cells, 4)

gaus2 = GaussianMixture(cells, 2)
gaus3 = GaussianMixture(cells, 3)
gaus4 = GaussianMixture(cells, 4)

km3.iterate(15)
km3low = km3.clusters.reshape(640 ,640)
coors = np.where(km3low==0)

#km2.iterate(15)
#km2low = km2.clusters.reshape(640, 640)

#km4.iterate(15)
#km4low = km4.clusters.reshape(640, 640)

gaus2.iterate(30)
gaus3.iterate(30)
gaus4.iterate(30)
classifiedG2 = gaus2.classify(cells)
num0 = (classifiedG2 == 0).sum()
num1 = (classifiedG2 == 1).sum()
ind = 1*(num1 <= num0)
coors = np.where(classifiedG2.reshape(640, 640) == ind)

classifiedG3 = gaus3.classify()
classifiedG4 = gaus4.classify()

plt.imsave('gmm2.png', classifiedG2.reshape(640, 640))
plt.imsave('gmm3.png', classifiedG3.reshape(640, 640))
plt.imsave('gmm4.png', classifiedG4.reshape(640, 640))

plt.imsave('km2.png', km2low)
plt.imsave('km3.png', km3low)
plt.imsave('km4.png', km4low)

locs = np.vstack([coors[0], coors[1]]).T

np.random.shuffle(locs)

train = locs[:-1000, :]
test = locs[-1000:, :]
ll = []
mus = []
for i in np.arange(50, 75, 1):
    print(i)
    gmm = GaussianMixture(train, i)
    gmm.iterate(35)
    mus.append(gmm.mu)
    print("Iteration completed")
    new_ll = gmm.loglikelihood(test)
    print(new_ll)
    ll.append(new_ll)

ks = np.arange(50, 75, 1)

plt.plot(locs[:, 0], locs[:, 1], 'b,')
plt.plot(gmm.mu[:, 0], gmm.mu[:, 1], 'yo')


