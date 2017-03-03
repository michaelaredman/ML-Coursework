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

coins = pd.read_csv('Coinbase_BTCUSD_trades_2016_07_07.csv')

bids_df = coins[coins['bid'] == True]
asks_df = coins[coins['bid'] == False]

bids = np.vstack([np.array(bids_df.index), np.array(bids_df['price'])]).T
asks = np.vstack([np.array(asks_df.index), np.array(asks_df['price'])]).T

vars = [np.var(bids[i*50:(i+1)*50, 1]) for i in range(0, 100)]

def neg_log_likelihood(y, lmbda, var_se, std):
    C_theta = cl.k_matrix_simple(bids[:1000:10, 0], bids[:1000:10, 0], lmbda, var_se)  + std*std*np.identity(len(bids[:1000:10, 0]))
    evals = np.linalg.eigvals(C_theta)
    logdetC = np.real(np.log(evals).sum())
    term1 = 0.5*logdetC
    term21 = np.matmul(np.linalg.inv(C_theta), y)
    term2 = 0.5*np.matmul(y, term21)
    term3 = 0.5*len(y)*np.log(2*np.pi)
    return term1 + term2 + term3

#helper = lambda lmbda, var_se: neg_log_likelihood(bids[:1000:10, 1], lmbda, var_se, 0.15)

#find_mins = minimize(lambda x: helper(*x), x0=[1, 1], method='BFGS')
#mins = find_mins['x']

def forcast(begin, start, end):
    section_index = bids[begin:start, 0]
    section_price = bids[begin:start, 1] - bids[start, 1]
    extrap = np.arange(0, 250) + bids[start, 0]
    ker = cl.kernal_simple(section_index, section_price, extrap, 0.1, 1000, 1)
    sd = np.diag(ker[1])
    predicted = ker[0] + bids[start, 1]
    plt.fill_between(extrap, predicted - sd, predicted + sd, color='red')

for i in range(45):
    forcast(i*200, i*200+500, i*200+550)
plt.plot(bids[:, 0], bids[:, 1])
plt.show()

def trade(start_time, end_time, predicted):
    buy_time = next(time for time in coins[coins['bid'] == False].index if time >= start_time)
    sell_time = next(time for time in coins[coins['bid'] == True].index if time >= start_time)
    buy_price = coins['price'].loc[buy_time]
    sell_price = coins['price'].loc[sell_time]
    if buy_price < predicted:
        weight = predicted - buy_price
        end_sell_time = next(time for time in coins[coins['bid'] == True].index if time >= end_time)
        end_sell_price = coins['price'].loc[end_sell_time]
        return (end_sell_price - buy_price)*weight
    elif sell_price > predicted:
        weight = sell_price - predicted
        end_buy_time = next(time for time in coins[coins['bid'] == False].index if time >= end_time)
        end_buy_price = coins['price'].loc[end_buy_time]
        return (sell_price - end_buy_price)*weight
    else:
        return 0

def trading_strat(begin, start, end):
    section_index = bids[begin:start, 0]
    section_price = bids[begin:start, 1] - bids[start, 1]
    extrap = np.arange(0, 250) + bids[start, 0]
    ker = cl.kernal_simple(section_index, section_price, extrap, 0.1, 1000, 1)
    predicted = ker[0] + bids[start, 1]
    return trade(start, end, predicted[-1])

rtrns = 0
for i in range(45):
    current_trade = trading_strat(i*200, i*200+500, i*200+550)
    print('Profit on trade {} is:{}'.format(i, current_trade))
    rtrns += current_trade 
print('Total returns: {}'.format(rtrns))

def complex_trading_strat(begin, start, end, std, lmbda, sigma):
    section_index = bids[begin:start, 0]
    section_price = bids[begin:start, 1] - bids[start, 1]
    extrap = np.arange(0, 250) + bids[start, 0]
    ker = cl.kernal_simple(section_index, section_price, extrap, std, lmbda, sigma)
    predicted = ker[0] + bids[start, 1]
    return trade(start, end, predicted[-1])

def first_half_trades(std, lmbda, sigma):
    rtrns = 0
    print('trading!')
    for i in range(20):
        current_trade = complex_trading_strat(i*200, i*200+500, i*200+550, std, lmbda, sigma)
        rtrns += current_trade
    return rtrns

#tr_mins = minimize(lambda x: -first_half_trades(*x), x0=[1, 1, 1])
