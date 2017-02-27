import numpy as np
import sklearn
from matplotlib import pyplot as plt
from scipy import misc

cells_image = misc.imread('../FluorescentCells.jpg')
cells = cells_image.reshape(640*640, 3)
