import numpy as np
import sklearn
import time
from matplotlib import pyplot as plt
from scipy import misc
from scipy.optimize import minimize
import pandas as pd
from cluster import cluster as cl

cells_image = misc.imread('../FluorescentCells.jpg')
cells = cells_image.reshape(640*640, 3)

co2_data = pd.read_csv('CO2_Mauna_Loa_Data.csv')
co2_unnorm = np.array(co2_data['co2 ppmv'])
co2 = co2_unnorm - co2_unnorm.mean()
months = np.array(co2_data['months since 1960-01-01'])

def neg_log_likelihood(y, period, lmbda, var_se, var_sin, std):
    C_theta = cl.k_matrix(months, months, period, lmbda, var_se, var_sin) + std*std*np.identity(len(months))
    evals = np.linalg.eigvals(C_theta)
    logdetC = np.real(np.log(evals).sum())
    term1 = 0.5*logdetC
    #print(term1)
    term21 = np.matmul(np.linalg.inv(C_theta), y)
    term2 = 0.5*np.matmul(y, term21)
    #print(term2)
    term3 = 0.5*len(y)*np.log(2*np.pi)
    return term1 + term2 + term3

extra = np.arange(431.5, 600)

thing = cl.kernal(months, co2, extra, 2.7e-01, 1.09, 3.05e03, 3.0e03, 2.0e3)
thing2 = cl.kernal(months, co2, extra, 2.7e-01, 1.09, 3.05e03, 3.0e03, 2.0e3)

def plotter(period, lmbda, var_se, var_sin, std):
    ker = cl.kernal(months, co2, extra, std, period, lmbda, var_se, var_sin)
    plt.plot(extra, ker[0])
    plt.plot(months, co2)
    file = 'pl{}-{}-{}-{}-{}.png'.format(period, lmbda, var_se, var_sin, std)
    plt.savefig(file)
    plt.close()

#the following code will find the maximizing parameters for a given value of std and the plots
std = 0.70
helper2 = lambda lmbda, var_se, var_sin : neg_log_likelihood(co2, 3.81, lmbda, var_se, var_sin, std)
find_mins = minimize(lambda x: helper2(*x), x0=[1, 1, 1], method='BFGS')
mins = find_mins['x']
#mins = np.array([4.86712438e+03,   4.87102545e+03,   3.03390715e+00])
plotter(3.81, *mins, std)
ker = cl.kernal(months,  co2, extra, std, 3.81, *mins)

mu = ker[0]
sd = np.diagonal(ker[1])
plt.plot(months, co2 + co2_unnorm.mean())
plt.fill_between(extra, mu + co2_unnorm.mean() - sd, mu + co2_unnorm.mean() + sd, color='red')
#file = 'spread{}.png'.format(time.clock())
#plt.savefig(file)
#plt.close()
