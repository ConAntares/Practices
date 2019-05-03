#### Visualization in 2D ####
### Contour Line Plot ###

import sympy
import numpy as np
import matplotlib as mpl
import matplotlib.pyplot as plt
import matplotlib.tri as tri
from matplotlib import rc
from matplotlib import rcParams
# from Luke_Color import *

# Global Setting

plt.rcParams['font.size']           = '12'
plt.rcParams['grid.color']          = '#D4D4D4'
plt.rcParams['grid.linestyle']      = 'dashed'

rc('text', usetex = True)
rc('font', **{'family': 'serif', 'serif': ['Computer Modern']})

formatter = mpl.ticker.ScalarFormatter(useMathText=True)
formatter.set_scientific(True) 
formatter.set_powerlimits((-1,1))

## Plot Statement

fig, ax = plt.subplots(figsize=(8,6))
fig.suptitle('SupTitle', size=18, color='black')
ax.set_title("SubTitle", size=16, color='black')

## Function or Data

delta = 0.01
x = np.arange(-4.0, 4.0, delta)
y = np.arange(-4.0, 4.0, delta)
X, Y = np.meshgrid(x, y)
Z1 = np.exp(-X**2-Y**2)
Z2 = np.exp(-(X-1)**2-(Y-1)**2)
Z = (Z1-Z2)*2

CS = ax.contour(X, Y, Z ,cmap='hot')
plt.clabel(CS, inline=1, fontsize=10)

## Outpot

# fig.savefig("2D Contour Line Py.pdf", dpi=1080)
plt.show()

### More Information ###
# https://matplotlib.org