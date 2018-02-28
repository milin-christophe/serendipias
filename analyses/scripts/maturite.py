# -*- coding: utf-8 -*-
from __future__ import division
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

# Calcul des montants empruntables en fonction 
# d'hypothèses de taux et de durée
# pour une mensualité fixe de 50.0 EUR

# Initialisation des variables
capital=np.zeros((3, 7))
interets=np.zeros((3, 7))

# Hypothèse de mensualité fixe
mensualite=50.0                     

# Hypothèses de taux (source: meilleurstaux.com au 30/06/2014)
mention=('Bon', 'Très bon', 'Excellent')
duree=np.array(([7, 10, 12, 15, 20, 25, 30])) 
taux=np.array(([0.0223, 0.0245, 0.0263, 0.0281, 0.0300, 0.0337, 0.0425],
      [0.0205, 0.0225, 0.0243, 0.0258, 0.0274, 0.0320, 0.0370],
      [0.0175, 0.0196, 0.0216, 0.0240, 0.0267, 0.0283, 0.0335]))
taux_df=pd.DataFrame(taux, index=mention, columns=duree)
           
for i in range(len(mention)):
    for j in range(len(taux[0])):
        capital[i,j]=np.pv(taux[i,j]/12, duree[j]*12, -mensualite)
        interets[i,j]=mensualite*12*duree[j]-capital[i,j]

# Affichage des résultats
for i in range(len(mention)):
    plt.figure('Taux '+ mention[i])
    plt.title('Taux '+ mention[i])
    plt.grid(color="k")
    plt.xlabel('Durée')
    plt.xlim(5, 31)
    plt.ylabel('Montant (EUR)')
    plt.plot(duree, capital[i], 'b', label='Montant financable')
    plt.plot(duree, interets[i], 'r', label='Interets versés')

plt.show()