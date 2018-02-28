Chiffres clés - Évolution et structure de la population
=======================================================
**France - Communes** _(hors Mayotte)_ 

Mise en ligne le 26 juin 2014

Découpage géographique au 01/01/2013  
_(pour les données RP2006 : découpage géographique communal au 01/01/2008)._  

_© Insee	Sources : [INSEE][INSEE_0], [Recensements de la population][INSEE_1]._

[INSEE_0]: http://www.insee.fr
[INSEE_1]: http://www.insee.fr/fr/themes/detail.asp?reg_id=99&ref_id=base-cc-evol-struct-pop-2011


Astuce
-------
On repère les variables :

- de l'**exploitation principale** grâce à la lettre **"P"** au début du code variable et à (princ)" dans l'intitulé de colonne ;
- de l'**exploitation complémentaire** grâce à la lettre **"C"** au début du code variable et à "(compl)" dans l'intitulé de colonne.


Conseils d'utilisation
----------------------

Les effectifs supérieurs à 500 peuvent normalement être utilisés en toute confiance. 

Les effectifs inférieurs à 200 doivent être maniés avec précaution, car, en raison de l'imprécision liée au sondage, ils peuvent ne pas être significatifs. De ce fait, les comparaisons entre territoires de petites tailles sont à proscrire.

Pour des zones de moins de 2 000 habitants, il est recommandé de ne pas utiliser les données issues de l'exploitation complémentaire.

Pour plus d'information méthodologique, vous pouvez consulter les fiches "Conseils pour l'utilisation des résultats du recensement" du menu "Bases de données">"Les résultats du recensement de la population">"Documentation sur les résultats du recensement", rubrique "Comprendre et utiliser le recensement" du site [www.insee.fr](www.insee.fr).

Ces fiches présentent les caractéristiques nouvelles du recensement de la population et traitent de leurs conséquences sur l'utilisation des données. Elles précisent en particulier les changements affectant les principales variables statistiques et leur comparabilité avec les recensements précédents.


Mode d'utilisation des données
------------------------------

Les bases de données sont faites pour permettre aux utilisateurs de calculer les chiffres clés pour des ensembles personnalisés de communes.

Les indicateurs non fournis dans la base de données mais disponibles dans les fiches de chiffres clés doivent être calculés à partir des formules de calcul fournies.

Issues de calculs liés aux techniques d'échantillonnage, les données en effectifs sont fournies avec six décimales ; celles-ci doivent être utilisées pour tous les calculs réalisés, de façon à éviter les erreurs d'arrondis.

La variable ID_MODIF_GEO permet de repérer les communes qui ont fusionné entre le 1er janvier 2008 et le 1er janvier 2013. Elle vaut Fccccc, où ccccc prend la valeur du code géographique de la commune résultant de la fusion. Ainsi en sommant les lignes concernées par une même fusion, les données des recensements 2011 et 2006 peuvent être comparées sur un territoire de même contour géographique.


Formules
--------

**POPULATION PAR GRANDE TRANCHE D'ÂGE**  
Part des 45 à 59 ans dans la population totale au RP2011  (GRAPHIQUE POP G2)  
100*P11_POP4559/P11_POP

**Part des personnes qui résidaient dans une autre commune 1 an auparavant parmi ceux qui ont changé de logement, selon l'âge**  
100*P11_POP1524_IRAN3P/P11_POP1524_IRAN2P


Définitions
-----------

### Âge

L'âge est la durée écoulée depuis la naissance. Il peut être calculé selon deux définitions :

- l'âge par génération (ou âge atteint dans l'année ou encore âge en différence de millésimes) est la différence entre l'année de collecte de l'information et l'année de naissance ;
- l'âge en années révolues est l'âge atteint au dernier anniversaire.

Par exemple, à la date du 1er janvier 2006, un individu né le 10 octobre 1925 est âgé de 81 ans en âge atteint dans l'année et de 80 ans si l'on considère son âge en années révolues.

Les résultats du recensement de la population sont désormais présentés en utilisant l'âge en années révolues.


_**Remarque(s) :**_

- Les résultats du recensement de la population de 1999 et des recensements antérieurs étaient présentés en utilisant l'âge en différence de millésimes.
- Désormais, depuis 2004, lorsque les données des recensements sont comparées, les âges sont tous exprimés en années révolues.


### Catégorie socioprofessionnelle, profession

La nomenclature des professions et catégories socioprofessionnelles dite PCS a remplacé, en 1982, la CSP (nomenclature de catégories socioprofessionnelles). Elle classe la population selon une synthèse de la profession (ou de l'ancienne profession), de la position hiérarchique et du statut (salarié ou non). 

Elle comporte trois niveaux d'agrégation emboîtés :

- les groupes socioprofessionnels (8 postes) ;
- les catégories socioprofessionnelles (24 et 42 postes) ;
- les professions (486 postes).

La version utilisée (PCS-2003) est en vigueur depuis le 1er janvier 2003. Elle a permis de regrouper des professions, dont la distinction était devenue obsolète, et d'en éclater d'autres afin de tenir compte de l'apparition de nouveaux métiers ou de nouvelles fonctions transversales aux différentes activités industrielles.

Aux niveaux regroupés en 8, 24 et 42 postes de la catégorie socioprofessionnelle (CS), les évolutions par rapport au recensement de 1999 ne sont pas sensiblement affectées.


_**Remarque(s) :**_

- Depuis 2004, le recensement permet de mieux prendre en compte les actifs ayant un emploi, même occasionnel ou de courte durée, et qui sont par ailleurs étudiants, retraités ou chômeurs. Ce changement peut avoir une incidence sur la répartition, par catégorie socioprofessionnelle, des actifs ayant un emploi.
- Pour les agriculteurs, les effectifs des CS 11, 12 et 13 (correspondant respectivement aux petites, moyennes et grandes exploitations) ont été regroupés en CS 10 " Agriculteurs exploitants ". La distinction entre les trois catégories socioprofessionnelles nécessitait la connaissance de la superficie de l'exploitation, information qui n'est plus disponible depuis le nouveau recensement de la population.
- Pour la même raison, il est conseillé de regrouper les professions détaillées codées 111A, 121A et 131A (agriculteurs sur respectivement petite, moyenne et grande exploitation de céréales-grandes cultures) en " Agriculteurs sur exploitation de céréales-grandes cultures (toutes tailles d'exploitation) " ; les professions 111B, 121B et 131B (Maraîchers, horticulteurs sur respectivement petite, moyenne et grande exploitation) en " Maraîchers, horticulteurs (toutes tailles d'exploitation) " ; etc. Seuls les " Entrepreneurs de travaux agricoles à façon, de 0 à 9 salariés ", les " Exploitants forestiers indépendants, de 0 à 9 salariés " et les " Patrons pêcheurs et aquaculteurs, de 0 à 9 salariés " peuvent être maintenus tels quels, car leur profession est sans rapport avec les surfaces agricoles.


### Communauté

Une communauté est un ensemble de locaux d'habitation relevant d'une même autorité gestionnaire et dont les habitants partagent à titre habituel un mode de vie commun. La population de la communauté comprend les personnes qui résident dans la communauté, à l'exception de celles qui résident dans des logements de fonction.

Les catégories de communautés sont les suivantes :

- les services de moyen ou de long séjour des établissements publics ou privés de santé, les établissements sociaux de moyen et long séjour, les maisons de retraite, les foyers et résidences sociales ou assimilés ;
- les communautés religieuses ;
- les casernes, quartiers, bases ou camps militaires ou assimilés ;
- les établissements hébergeant des élèves ou des étudiants, y compris les établissements militaires d'enseignement ;
- les établissements pénitentiaires ;
- les établissements sociaux de court séjour ;
- les autres communautés.


_**Remarque(s) :**_

- Désormais, avec la nouvelle méthode de recensement, les élèves majeurs vivant en internat ainsi que les militaires vivant en caserne sans leur famille font partie de la population des communautés. Ils ne sont plus rattachés au ménage de leur famille et ne font donc plus partie de la population des ménages comme lors des précédents recensements de la population. Les caractéristiques de la population vivant en communauté et de la population des ménages peuvent être affectées par ce changement, en particulier pour certains territoires. Ainsi, si l'internat ou la caserne n'est pas situé dans la même commune que la résidence de la famille, ces personnes sont comptées à un endroit différent de celui où elles auraient été comptées lors des recensements précédents. Elles sont désormais comptées au lieu où est situé l'internat ou la caserne alors qu'elles étaient comptées auparavant au lieu de leur résidence familiale. Pour certains territoires, notamment les communes sièges d'un établissement d'enseignement avec internat ou d'une structure militaire dont les effectifs sont importants au regard de la population de la commune, la qualité des comparaisons dans le temps peut être affectée de façon significative.


### Décès

Les statistiques sur les décès sont issues des déclarations à l'état civil. Les décès sont comptabilisés au lieu de résidence du défunt.


### Lieu de résidence 1 an auparavant

Il s'agit du lieu de résidence 1 an avant l'enquête de recensement. Les personnes concernées sont donc âgées de 1 ans ou plus au 1er janvier de l'année d'enquête. Parmi ces personnes, on distingue celles qui habitaient :

- dans le même logement ;
- dans un autre logement de la même commune ;
- dans une autre commune.

Par convention, on considère que les personnes sans-abri, les mariniers, les personnes vivant en habitation mobile et les personnes détenues avaient pour lieu de résidence 1 an auparavant un autre logement de la commune au sein de laquelle elles sont comptabilisées.


_**Remarque(s) :**_

- Depuis 2004, avec le recensement rénové, les enfants de moins de cinq ans ne sont pas inclus dans la population susceptible d'avoir migré car ils n'étaient pas nés à la date de référence prise en compte pour la détermination du lieu de résidence antérieure. Dans les recensements précédents, on leur affectait, selon les cas, le lieu de résidence antérieure de la mère de famille, du père de famille ou de la personne de référence du ménage.


### Logement

Un logement, ou logement ordinaire, est défini du point de vue de son utilisation. C'est un local utilisé pour l'habitation :

- séparé, c'est-à-dire complètement fermé par des murs et cloisons, sans communication avec un autre local si ce n'est par les parties communes de l'immeuble (couloir, escalier, vestibule, …) ;
- indépendant, à savoir ayant une entrée d'où l'on a directement accès sur l'extérieur ou les parties communes de l'immeuble, sans devoir traverser un autre local.

Les logements sont répartis en quatre catégories : résidences principales, logements occasionnels, résidences secondaires, logements vacants.

Les habitations mobiles et les locaux utilisés pour l'habitation au sein des communautés (maisons de retraite, foyers, communautés religieuses, ...) ne sont pas considérés comme des logements. Les logements de fonction sont, quant à eux, considérés comme des logements.


### Naissances

Les statistiques sur les naissances, issues des déclarations à l'état civil, portent sur les naissances d'enfants nés vivants. Celles-ci sont comptabilisées au lieu de résidence de la mère.


### Population

Les chiffres de population présentés correspondent à l'ensemble des personnes dont la résidence habituelle se situe sur le territoire considéré. La population de ce territoire comprend :

- la population des résidences principales (ou population des ménages) ;
- la population des personnes vivant en communautés ;
- la population des habitations mobiles, les sans-abris et les mariniers rattachés au territoire.

Depuis 2004, elle correspond, pour un territoire défini par un zonage administratif, à la population municipale de ce territoire, aux questions d'arrondis près. Le concept de population municipale est défini par le décret n° 2003-485 publié au Journal officiel du 8 juin 2003, relatif au recensement de la population.


_**Remarque(s) :**_

- Depuis 2004, avec le recensement rénové, le concept de population est légèrement modifié. Les élèves et étudiants majeurs en internat et les militaires vivant en caserne tout en ayant une résidence personnelle sont désormais comptés dans la population des communautés de la commune de leur établissement. Auparavant, ils étaient rattachés à leur résidence familiale donc comptés dans la population des ménages de la commune de leur résidence familiale.
- Ces changements peuvent avoir deux types de conséquences :
    - ils peuvent, au plan local, notamment dans les communes où existent de tels établissements, expliquer une partie de l'évolution de la population. Au niveau national, ils n'ont aucune incidence sur le chiffre de la population statistique ;
    - ils entraînent un transfert de la population des ménages vers la population des communautés mais l'impact est, sauf exceptions, du second ordre car les effectifs concernés sont faibles.


### Résidence principale

Une résidence principale est un logement occupé de façon habituelle et à titre principal par une ou plusieurs personnes qui constituent un ménage. Il y a ainsi égalité entre le nombre de résidences principales et le nombre de ménages.


Présentation du recensement de la population
--------------------------------------------

Le recensement de la population permet de connaître la diversité et l'évolution de la population de la France. L’Insee fournit ainsi des statistiques sur les habitants et les logements, leur nombre et leurs caractéristiques : répartition par sexe et âge, professions, conditions de logement, modes de transport, déplacements domicile-travail, etc.


### Des chiffres chaque année, fondés sur 5 ans d'enquêtes

Le recensement repose désormais sur une collecte d'information annuelle, concernant successivement tous les territoires communaux au cours d'une période de cinq ans. Les communes de moins de 10 000 habitants réalisent une enquête de recensement portant sur toute la population, à raison d'une commune sur cinq chaque année. Les communes de 10 000 habitants ou plus, réalisent tous les ans une enquête par sondage auprès d'un échantillon d'adresses représentant 8 % de leurs logements.

En cumulant cinq enquêtes, l'ensemble des habitants des communes de moins de 10,000 habitants et 40% environ de la population des communes de 10,000 habitants ou plus sont pris en compte. Les informations ainsi collectées sont ramenées à une même date pour toutes les communes afin d'assurer l'égalité de traitement entre elles. Cette date de référence est fixée au 1er janvier de l'année médiane des cinq années d'enquête pour obtenir une meilleure robustesse des données.

Les cinq premières enquêtes de recensement ont été réalisées de 2004 à 2008. Ainsi, à partir de fin 2008, il a été possible d'élaborer puis de diffuser les résultats complets du recensement millésimé 2006, date du milieu de la période. Depuis lors et chaque année, les résultats de recensement sont produits à partir des cinq enquêtes annuelles les plus récentes : abandon des informations issues de l'enquête la plus ancienne et prise en compte de l'enquête nouvelle.


### Exploitations principale et complémentaire

Le nouveau recensement de la population fait l'objet, comme les anciens recensements généraux, d'une exploitation statistique réalisée en deux temps : une exploitation principale et une exploitation complémentaire.

L'exploitation complémentaire fournit, en plus, des résultats sur les professions et catégories socioprofessionnelles, les secteurs d'activité économique et la structure familiale des ménages. Pour les communes de moins de 10 000 habitants, elle porte sur un quart des ménages. Pour les communes de 10 000 habitants ou plus, l'exploitation complémentaire porte sur l'ensemble des bulletins collectés auprès des ménages, soit environ 40 %. Pour toutes les communes, l'exploitation complémentaire porte également sur un individu des communautés sur quatre.

_Plus d'information dans la fiche conseil "les exploitations principale et complémentaire", disponible dans les fiches "Conseils pour l'utilisation des résultats du recensement" du menu "Bases de données">"Les résultats du recensement de la population">"Documentation sur les résultats du recensement", rubrique "Comprendre et utiliser le recensement" du site [www.insee.fr](www.insee.fr)._
