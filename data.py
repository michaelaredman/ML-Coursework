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
co2 = np.array(co2_data['co2 ppmv'])
months = np.array(co2_data['months since 1960-01-01'])

def neg_log_likelihood(y, period, lmbda, var_sin, var_se, std):
    C_theta = cl.k_matrix(months, months, period, lmbda, var_se, var_sin) + std*std*np.identity(len(months))
    evals = np.linalg.eigvals(C_theta)
    logdetC = np.real(np.log(evals).sum())
    term1 = 0.5*logdetC
    #print(term1)
    term21 = np.matmul(C_theta, y)
    term2 = 0.5*np.matmul(y, term21)
    #print(term2)
    term3 = 0.5*len(y)*np.log(2*np.pi)
    return term1 + term2 + term3

helper = lambda period,lmbda, var_sin, var_se, std : neg_log_likelihood(co2, period, lmbda, std, var_sin, var_se)
mins = minimize(lambda x: helper(*x), x0=[1, 1, 1, 1, 1], method='BFGS')

lmbda_opt = 0.118
sigma_opt = 8.7e-09

extra = np.arange(432.5, 500)



