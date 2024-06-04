import matplotlib.pyplot as plt
import numpy as np

data=np.loadtxt('MAE.txt', delimiter=',')
plt.plot(data[:,0],data[:,2],'r',label='MAE')
plt.xlabel('theta')
plt.ylabel('E')
plt.legend()
plt.show()

