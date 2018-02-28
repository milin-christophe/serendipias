Chiffres clés - Logement
========================
**France - Communes** _(hors Mayotte)_ 

Mise en ligne le 26 juin 2014 (modifiée le 27 août 2014)

Découpage géographique au 01/01/2013 _(pour les données RP2006 : découpage géographique communal au 01/01/2008)._  

© Insee	Sources : [INSEE][INSEE_0], [Recensements de la population][INSEE_1].

[INSEE_0]: http://www.insee.fr
[INSEE_1]: http://www.insee.fr/fr/themes/detail.asp?reg_id=99&ref_id=base-cc-logement-2011


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

**Nombre moyen de pièces par résidence principale de type maison au RP2011**  
Exemple issu du tableau LOG T4 - NOMBRE MOYEN DE PIÈCES DES RÉSIDENCES PRINCIPALES (fiche Chiffres clés)  
P11_NBPI_RPMAISON/P11_RPMAISON

**Nombre moyen de pièces par logement dans lequel le ménage a emménagé depuis moins de 2 ans au RP2011**  
Exemple issu du tableau LOG T6 - ANCIENNETÉ D'EMMÉNAGEMENT DANS LA RÉSIDENCE PRINCIPALE (fiche Chiffres clés)  
P11_NBPI_RP_ANEM0002/P11_MEN_ANEM0002

**Nombre moyen de pièces par personne dans le logement dans lequel le ménage a emménagé depuis moins de 2 ans au RP2011**  
Exemple issu du tableau LOG T6 - ANCIENNETÉ D'EMMÉNAGEMENT DANS LA RÉSIDENCE PRINCIPALE  (fiche Chiffres clés)  
P11_NBPI_RP_ANEM0002/P11_PMEN_ANEM0002

**Part des ménages ayant émménagé depuis 30 ans ou plus au RP2011**  
Exemple  issu du graphique LOG G2 - ANCIENNETÉ D'EMMÉNAGEMENT DES MÉNAGES (fiche Chiffres clés)  
100*P11_MEN_ANEM30P/P11_MEN

**Ancienneté moyenne d'emménagement dans les résidences principales occupées par des propriétaires au RP2011**  
Exemple issu du tableau LOG T7 - RÉSIDENCES PRINCIPALES SELON LE STATUT D'OCCUPATION (fiche Chiffres clés)  
P11_ANEM_RP_PROP/P11_RP_PROP


Définitions
-----------

###Ancienneté d'emménagement

L'ancienneté est calculée à partir de l'année d'emménagement dans le logement. Pour les individus enquêtés en 2005 ayant déclaré avoir emménagé en 2005 l'ancienneté d'emménagement est de 0 an, pour ceux qui ont déclaré 2004 l'ancienneté d'emménagement est de 1 an, ...

Si tous les occupants présents au moment du recensement ne sont pas arrivés en même temps, la date d'emménagement correspond à celle du premier arrivé. Si cette personne a toujours vécu dans le logement, l'année d'emménagement correspond à son année de naissance.


### Aspect du bâti (DOM)

L'aspect du bâti est une information spécifique aux départements d'outre mer (DOM). Il permet de répartir les logements selon les modalités suivantes :

- habitations de fortune ;
- cases traditionnelles ;
- maisons  ou immeubles en bois ;
- maisons ou immeubles en dur.


### Catégorie de logement

Les logements sont répartis en quatre catégories :

- les résidences principales : logements occupés de façon habituelle et à titre principal par une ou plusieurs personnes, qui constituent un ménage. Il y a ainsi égalité entre le nombre de résidences principales et le nombre de ménages ;
- les logements occasionnels : logements ou pièces indépendantes utilisés occasionnellement pour des raisons professionnelles (par exemple, un pied-à-terre professionnel d'une personne qui ne rentre qu'en fin de semaine auprès de sa famille) ;
- les résidences secondaires : logements utilisés pour les week-ends, les loisirs ou les vacances, y compris les logements meublés loués (ou à louer) pour des séjours touristiques ;
- les logements vacants : logements inoccupés se trouvant dans l'un des cas suivants :
    - proposé à la vente, à la location,
    - déjà attribué à un acheteur ou un locataire et en attente d'occupation,
    - en attente de règlement de succession,
    - conservé par un employeur pour un usage futur au profit d'un de ses employés,
    - gardé vacant et sans affectation précise par le propriétaire (exemple : un logement très vétuste, ...).

La distinction entre logements occasionnels et résidences secondaires est parfois difficile à établir ; c'est pourquoi, les deux catégories sont souvent regroupées.


### Disponibilité en eau et électricité (DOM)

En référence à l'existence d'un point d'eau potable à l'intérieur du logement et à l'équipement électrique d'au moins une pièce, les logements sont répartis selon les caractéristiques suivantes :

- eau froide seulement, électricité dans le logement ;
- eau froide seulement, pas d'électricité dans le logement ;
- eau chaude, électricité dans le logement ;
- eau chaude, pas d'électricité dans le logement ;
- aucun point d'eau, électricité dans le logement ;
- aucun point d'eau, pas d'électricité dans le logement.


### Emplacement réservé de stationnement

Cet emplacement réservé de stationnement (garage, box ou place de parking) est destiné à un usage personnel du ménage.


### Installations sanitaires (France métropolitaine)

Les logements sont répartis selon leurs installations sanitaires en trois catégories :

- ni baignoire ni douche ;
- baignoire ou douche dans une pièce non réservée à la toilette ;
- salle(s) de bains (avec douche ou baignoire).


### Installations sanitaires (DOM)

Les logements sont répartis selon qu'ils disposent ou non :

- de WC situés à l'intérieur ;
- d'une baignoire ou d'une douche installée dans le logement et à la disposition exclusive de ses occupants.


### Logement

Un logement, ou logement ordinaire, est défini du point de vue de son utilisation. 

C'est un local utilisé pour l'habitation :

- séparé, c'est-à-dire complètement fermé par des murs et cloisons, sans communication avec un autre local si ce n'est par les parties communes de l'immeuble (couloir, escalier, vestibule, …) ;
- indépendant, à savoir ayant une entrée d'où l'on a directement accès sur l'extérieur ou les parties communes de l'immeuble, sans devoir traverser un autre local.

Les logements sont répartis en quatre catégories : résidences principales, logements occasionnels, résidences secondaires, logements vacants.

Les habitations mobiles et les locaux utilisés pour l'habitation au sein des communautés (maisons de retraite, foyers, communautés religieuses, ...) ne sont pas considérés comme des logements. Les logements de fonction sont, quant à eux, considérés comme des logements.


### Ménage

Un ménage, au sens du recensement, désigne l'ensemble des personnes qui partagent la même résidence principale, sans que ces personnes soient nécessairement unies par des liens de parenté. Un ménage peut être constitué d'une seule personne. Il y a égalité entre le nombre de ménages et le nombre de résidences principales.

Les personnes vivant dans des habitations mobiles (les mariniers, les sans-abri) et les personnes vivant en communauté (foyers de travailleurs, maisons de retraite, résidences universitaires, maisons de détention, ...) sont considérées comme vivant hors ménage.

_**Remarque(s) :** Depuis 2004, le rattachement de certaines catégories de population, vivant en communauté et ayant par ailleurs une résidence familiale, a été modifié par rapport au recensement de 1999. Cela concerne, pour l'essentiel, les élèves et étudiants majeurs en internat et les militaires logés en caserne mais ayant une résidence personnelle. Ils sont désormais comptés dans leur communauté, donc dans la population hors ménage de la commune de leur établissement. Auparavant, ils étaient rattachés à leur résidence familiale, donc comptés dans la population des ménages de la commune de leur résidence familiale. En sens inverse, les étudiants mineurs logés en cité universitaire ou dans un foyer d'étudiants sont rattachés à leur résidence familiale, donc dans la population des ménages, alors qu'en 1999 ils étaient comptés dans la communauté. Leur effectif est très faible, bien inférieur à celui des majeurs en internat._


### Mode de chauffage (France métropolitaine)

Les catégories suivantes sont utilisées pour caractériser le principal moyen de chauffage d'un logement :

- chauffage central collectif (pour la totalité ou la plus grande partie de l'immeuble, pour un groupe d'immeubles ou par l'intermédiaire d'une compagnie de chauffage urbain) ;
- chauffage central individuel (chaudière propre au logement) ;
- chauffage individuel "tout électrique" ;
- autre : poêle, cheminée, cuisinière...


### Mode d'évacuation des eaux usées (DOM)

Les catégories du mode d'évacuation des eaux usées sont les suivantes :

- raccordement au réseau d'égouts ;
- raccordement à une fosse septique ;
- raccordement à un puisard ;
- évacuation des eaux usées à même le sol.

Le raccordement au réseau d'égout ou "tout-à-l'égout" est une évacuation des eaux usées par canalisation branchée sur un égout. Les écoulements à ciel ouvert ne rentrent pas dans cette catégorie. De même, dans le cas de puisard ou fosse septique, il n'y a pas "tout-à-l'égout".


### Nombre de pièces

Sont dénombrées les pièces à usage d'habitation (y compris la cuisine si sa surface excède 12 m²) ainsi que les pièces annexes non cédées à des tiers (chambres de service...). Ne sont pas comptées les pièces à usage exclusivement professionnel ainsi que les entrées, couloirs, salles de bain, ...


### Nombre de voitures

Sont comptabilisées l'ensemble des voitures à la disposition des habitants de la résidence principale (ménage), à l'exception de celles à usage exclusivement professionnel.


### Période d'achèvement de la construction - Non disponible provisoirement

La période considérée est la période d'achèvement de la construction de la maison ou de l'immeuble abritant le logement, telle qu'elle a été déclarée par ses occupants lors de la collecte du recensement. Si les différentes parties du logement ne sont pas de la même époque, il s'agit de la période d'achèvement de la partie habitée la plus importante.

_**Remarque(s):** Lors du recensement de 1999, la période d'achèvement était mise en cohérence pour les différents logements d'un même immeuble. L'absence d'information sur l'immeuble ne permet plus d'effectuer ce contrôle.
Du fait de l'étalement de la collecte sur cinq ans, les observations portant sur les logements achevés au cours de cette période sont partielles._


### Population des ménages

La population des ménages recouvre l'ensemble des personnes qui partagent la même résidence principale sans que ces personnes soient nécessairement unies par des liens de parenté. Elle ne comprend pas les personnes vivant dans des habitations mobiles, les mariniers et les sans-abri, ni les personnes vivant en communauté (foyers de travailleurs, maisons de retraite, résidences universitaires, maisons de détention, ...)

_**Remarque(s) :** Depuis 2004, avec le recensement rénové, les élèves ou étudiants majeurs vivant en internat, ainsi que les militaires vivant en caserne sans leur famille, ne font plus partie de la population des ménages, car ils ne sont plus rattachés au ménage de leur famille comme lors des précédents recensements de la population. Ces changements peuvent expliquer, en partie, les évolutions depuis 1999._


### Résidence principale

Une résidence principale est un logement occupé de façon habituelle et à titre principal par une ou plusieurs personnes qui constituent un ménage. Il y a ainsi égalité entre le nombre de résidences principales et le nombre de ménages.


### Statut d'occupation du logement

Le statut d'occupation du logement définit les situations juridiques des ménages concernant l'occupation de leur résidence principale. On distingue trois statuts principaux :

- le statut de propriétaire s'applique aux ménages propriétaires, copropriétaires et accédant à la propriété ;
- le statut de locataire ou sous-locataire s'applique aux ménages acquittant un loyer, quel que soit le type de logement qu'ils occupent (logement loué vide ou loué meublé, chambre d'hôtel s'il s'agit de la résidence principale du ménage) ;
- le statut de logé gratuitement s'applique aux ménages qui ne sont pas propriétaires de leur logement et qui ne paient pas de loyer (exemple : personnes logées gratuitement chez des parents, des amis, leur employeur, ...).

_**Remarque(s) :** Depuis 2004, avec le recensement rénové, les ménages usufruitiers de leur résidence principale (suite à une donation-partage par exemple) sont considérés comme propriétaires. Ils étaient considérés comme logés gratuitement dans les recensements précédents._


### Taille du ménage (nombre de personnes du logement)

La taille d'un ménage est égale au nombre de personnes qui en font partie, c'est-à-dire au nombre d'occupants de la résidence principale. Les ménages peuvent être répartis selon leur taille (exprimée en nombres entiers), et on peut aussi calculer une taille moyenne des ménages (exprimée avec une décimale) pour un groupe de ménages, par exemple ceux d'une zone géographique.

_**Remarque(s) :** Depuis 2004, le rattachement de certaines catégories de population, vivant en communauté et ayant par ailleurs une résidence familiale, a été modifié par rapport au recensement de 1999. Cela concerne, pour l'essentiel, les élèves et étudiants majeurs en internat et les militaires logés en caserne mais ayant une résidence personnelle. Ils sont désormais comptés dans leur communauté, donc dans la population hors ménage de la commune de leur établissement. Auparavant, ils étaient rattachés à leur résidence familiale, donc comptés dans la population des ménages de la commune de leur résidence familiale.
En sens inverse, les étudiants mineurs logés en cité universitaire ou dans un foyer d'étudiants sont rattachés à leur résidence familiale, donc dans la population des ménages, alors qu'en 1999 ils étaient comptés dans la communauté. Leur effectif est très faible, bien inférieur à celui des majeurs en internat._


### Type de logement
 
Le type de logement répartit les logements selon les catégories suivantes :

- maisons ;
- appartements ;
- autres logements : logements-foyers, chambres d'hôtel, habitations de fortune, pièces indépendantes.
