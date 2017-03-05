import numpy as np
import time
import random
from matplotlib import pyplot as plt
from scipy import misc
from scipy.optimize import minimize
import pandas as pd
import seaborn as sns
from cluster import cluster as cl
from clus import *

cells_image = misc.imread('../FluorescentCells.jpg')
cells = cells_image.reshape(640*640, 3)

km2 = KMeans(cells, 2)
km3 = KMeans(cells, 3)
km4 = KMeans(cells, 4)

gaus2 = GaussianMixture(cells, 2)
#gaus3 = GaussianMixture(cells, 3)
#gaus4 = GaussianMixture(cells, 4)

#km3.iterate(10)
#km3low = km3.clusters.reshape(640 ,640)
#coors = np.where(km3low==0)



gaus2.iterate(20)
classified = gaus2.classify(cells)
num0 = (classified == 0).sum()
num1 = (classified == 1).sum()
ind = 1*(num1 <= num0)
coors = np.where(gaus2.classify(cells).reshape(640, 640) == ind)

locs = np.vstack([coors[0], coors[1]]).T

np.random.shuffle(locs)

train = locs[:-1000, :]
test = locs[-1000:, :]
ll = []
for i in np.arange(30, 100, 20):
    print(i)
    gmm = GaussianMixture(train, i)
    gmm.iterate(30)
    print("Iteration completed")
    new_ll = gmm.loglikelihood(test)
    print(new_ll)
    ll.append(new_ll)

plt.plot(locs[:, 0], locs[:, 1], 'b,')

    
