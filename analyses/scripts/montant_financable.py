# -*- coding: utf-8 -*-
from __future__ import division
import numpy as np
import matplotlib.pyplot as plt

# Calcul des montants empruntables en fonction 
# d'hypothèses de taux et de durée
# pour une mensualité fixe de 50.0 EUR
mensualite=50.0                     # Hypothèse de mensualité fixe
capital=np.zeros((4, 4))
taux=([0.0, 0.025, 0.05, 0.075])    # Hypothèses de taux
duree=([10, 15, 20, 25])            # Hypothèses de durée
for i in range(len(taux)):
    for j in range(len(duree)):
        capital[i, j]=np.pv(taux[i]/12, duree[j]*12, -mensualite)

# Affichage du tableau des résultats
print(np.round(capital,2))

# Visualisation des résultats
fig, ax = plt.subplots()

index = np.arange(len(duree))
width = 1.0 / (len(taux)+1)
rect=list()
taux_leg=list()
colors='rgbm'
for i in range(len(taux)):
    rect.append(ax.bar(index+i*width, capital[i], width, 
                       color=colors[i],
                       alpha=0.75))
    taux_leg.append(str(taux[i]*100)+' %')                       

plt.title("Montant finançable pour une\n mensualité fixe de 50 EUR")
plt.grid(color='k')
plt.xlabel('Durée du prêt (an)')
plt.ylabel('Montant finançable (EUR)')
plt.legend(taux_leg, title='Taux', loc='upper left')
plt.xticks(index + 2*width, duree)