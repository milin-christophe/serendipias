# -*- coding: utf-8 -*-
import pandas as pd
import matplotlib.pyplot as plt

# Récuparation des barèmes pour un prêt de 10,000 EUR
pret_10ke=pd.read_csv("taux_10kE.csv", encoding='latin1', sep=';')
# Récuparation des barèmes pour un prêt de 25,000 EUR
pret_25ke=pd.read_csv("taux_25kE.csv", encoding='latin1', sep=';')

# Affichage des données
plt.figure("TAEG pour des travaux de 10,000 EUR")
plt.subplot(1,1,1)
plt.scatter(pret_10ke.Duree,pret_10ke.TAEG)
plt.title('TAEG pour des travaux \nde 10,000 EUR')
plt.grid(color="k")
plt.xlabel('Durée')
plt.xlim(0,16)
plt.ylabel('Taux Annuel Effectif Global')
plt.ylim(0,8)

# Affichage des données
plt.figure("TAEG pour des travaux de 25,000 EUR")
plt.subplot(1,1,1)
plt.scatter(pret_25ke.Duree,pret_25ke.TAEG)
plt.title('TAEG pour des travaux \nde 25,000 EUR')
plt.grid(color="k")
plt.xlabel('Durée')
plt.xlim(0,16)
plt.ylabel('Taux Annuel Effectif Global')
plt.ylim(0,8)