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

km2 = k_means(cells, 2)
km3 = k_means(cells, 3)
km4 = k_means(cells, 4)

gaus2 = GaussianMixture(cells, 2)
gaus3 = GaussianMixture(cells, 3)
gaus4 = GaussianMixture(cells, 4)

km3.iterate(10)
km3low = km3.clusters.reshape(640 ,640)
coors = np.where(km3low==2)

locs = np.vstack([coors[0], coors[1]]).T

np.random.shuffle(locs)

train = locs[:35000, :]
test = locs[35000:, :]
for i in np.arange(50, 70, 5):
    gmm = GaussianMixture(train, i)
    gmm.iterate(5)
    ll = gmm.loglikelihood(test)
    print("Loglikelihood for k={}: {}".format(i, ll))

