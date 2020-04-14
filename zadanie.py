import matplotlib.pyplot as plt
import matplotlib.ticker as ticker
import numpy as np

f = open("wynik_bg.txt", "r")

data = f.readlines()

f.close()

data2 = []

for element in data:
    data2.append(element.strip()[-7:-1])

#print(data2)
plt.plot(data2)

#plt.yticks(np.arange(1.2, 10, step=0.2))
#plt.yticks([-1.5, 10.5, 195],['1.2', '1.5', '1.8'])
plt.xlabel('iterations')
plt.ylabel('energy gap (eV)')
plt.show()