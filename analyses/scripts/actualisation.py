# -*- coding: utf-8 -*-
"""
Created on Mon Feb  2 12:35:56 2015
Python 3.4.1 | Anaconda 2.1.0 (32-bit)

@author: milinc (christophe.milin@gmail.com)

Licence: CeCILL v2.1
http://www.cecill.info/licences/Licence_CeCILL_V2.1-en.html

"""

###############################################################################
# Import of required modules
###############################################################################
import matplotlib.pyplot as plt
import numpy as np


###############################################################################
# Definition of classes and functions 
###############################################################################



###############################################################################
# Main program
###############################################################################

if __name__ == '__main__':

    # Calculs suivant différentes hypothèses de taux d'actualisation
    taux=np.array((0.04,0.08,0.12))     # hypothèses de taux d'actualisation
    V=100                               # valeur dans le futur
    x=np.linspace(0,50, num=50)
    y=np.zeros((len(taux),len(x)))
    for i in range(len(taux)):    
        for j in range(len(x)):
            y[i,j]=V/((1+taux[i])**j)
    
    # Visualisation des résultats
    plt.figure('Valeur présente en fonction du taux d\'actualisation')
    plt.grid(color="k")
    plt.xlabel('Temps (années)')
    plt.ylabel('Valeur 100 à l\'année t ramenée à l\'année 0')
    colors='bgr'
    for i in range(len(taux)):
        plt.plot(x, y[i], color=colors[i], alpha=0.8)
    plt.text(30,80,r'$V_0=\frac{V(t)}{(1+a)^t}$', fontsize=20)
    plt.text(15,60,'a=4%')
    plt.text(15,35,'a=8%')
    plt.text(15,20,'a=12%')
    plt.show()
    
