import numpy as np
import sklearn
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

helper = lambda period,lmbda, var_se, var_sin, std : neg_log_likelihood(co2, period, lmbda, var_se, var_sin, std)
mins = minimize(lambda x: helper(*x), x0=[1, 1, 1, 1, 1], method='BFGS')

lmbda_opt = 0.118
sigma_opt = 8.7e-09

extra = np.arange(431.5, 500)

thing = cl.kernal(months, co2, extra, 2.7e-01, 1.09, 3.05e03, 3.0e03, 2.0e3)
thing2 = cl.kernal(months, co2, extra, 2.7e-01, 1.09, 3.05e03, 3.0e03, 2.0e3)

def plotter(period, lmbda, var_se, var_sin, std):
    ker = cl.kernal(months, co2, extra, std, period, lmbda, var_se, var_sin)
    plt.plot(extra, ker[0])
    plt.plot(months, co2)
    file = 'pl{}-{}-{}-{}-{}.png'.format(period, lmbda, var_se, var_sin, std)
    plt.savefig(file)
    plt.close()

helper2 = lambda lmbda, var_se, var_sin : neg_log_likelihood(co2, 3.81, lmbda, var_se, var_sin, 0.1)
mins = minimize(lambda x: helper2(*x), x0=[1, 1, 1], method='BFGS')
plotter(3.81, 2.08e03, 2.08e03, -1.17, 0.1)
ker = cl.kernal(months, co2, extra, std, period, lmbda, var_se, var_sin)
