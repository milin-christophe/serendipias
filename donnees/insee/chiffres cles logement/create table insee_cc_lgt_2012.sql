-- DROP TABLE IF EXISTS insee_cc_lgt_2012 CASCADE;
CREATE TABLE insee_cc_lgt_2012 (
    -- rowid SERIAL PRIMARY KEY,
    codgeo CHARACTER VARYING(5) NOT NULL UNIQUE, -- Code du département suivi du numéro de commune ou du numéro d'arrondissement municipal
    reg CHARACTER VARYING(2) NOT NULL, -- Code de la région
    dep CHARACTER VARYING(3) NOT NULL, -- Code du département
    libgeo CHARACTER VARYING(70) NOT NULL, -- Libellé de la commune ou de l'arrondissement municipal
    P12_LOG	NUMERIC, --	Nombre de logements
    P12_RP	NUMERIC, --	Nombre de résidences principales
    P12_RSECOCC	NUMERIC, --	Nombre de résidences secondaires et logements occasionnels
    P12_LOGVAC	NUMERIC, --	Nombre de logements vacants
    P12_MAISON	NUMERIC, --	Nombre de maisons
    P12_APPART	NUMERIC, --	Nombre d'appartements
    P12_RP_1P	NUMERIC, --	Nombre de résidences principales d'1 pièce
    P12_RP_2P	NUMERIC, --	Nombre de résidences principales de 2 pièces
    P12_RP_3P	NUMERIC, --	Nombre de résidences principales de 3 pièces
    P12_RP_4P	NUMERIC, --	Nombre de résidences principales de 4 pièces
    P12_RP_5PP	NUMERIC, --	Nombre de résidences principales de 5 pièces ou plus
    P12_NBPI_RP	NUMERIC, --	Nombre de pièces des résidences principales
    P12_RPMAISON	NUMERIC, --	Nombre de résidences principales de type maison
    P12_NBPI_RPMAISON	NUMERIC, --	Nombre de pièces des résidences principales de type maison
    P12_RPAPPART	NUMERIC, --	Nombre de résidences principales de type appartement
    P12_NBPI_RPAPPART	NUMERIC, --	Nombre de pièces des résidences principales de type appartement
    P12_RP_ACHTT	NUMERIC, --	Nombre de résidences principales construites avant 2010
    P12_RP_ACHT1	NUMERIC, --	Nombre de résidences principales construites avant 1946
    P12_RP_ACHT2	NUMERIC, --	Nombre de résidences principales construites de 1946 à 1990
    P12_RP_ACHT3	NUMERIC, --	Nombre de résidences principales construites de 1991 à 2009
    P12_RPMAISON_ACHT1	NUMERIC, --	Nombre de résidences principales de type maison construites avant 1946 
    P12_RPMAISON_ACHT2	NUMERIC, --	Nombre de résidences principales de type maison construites de 1946 à 1990
    P12_RPMAISON_ACHT3	NUMERIC, --	Nombre de résidences principales de type maison construites de 1991 à 2009
    P12_RPAPPART_ACHT1	NUMERIC, --	Nombre de résidences principales de type appartement construites avant 1946 
    P12_RPAPPART_ACHT2	NUMERIC, --	Nombre de résidences principales de type appartement construites de 1946 à 1990
    P12_RPAPPART_ACHT3	NUMERIC, --	Nombre de résidences principales de type appartement construites de 1991 à 2009
    P12_MEN	NUMERIC, --	Nombre de ménages
    P12_MEN_ANEM0002	NUMERIC, --	Nombre de ménages ayant emménagé depuis moins de 2 ans
    P12_MEN_ANEM0204	NUMERIC, --	Nombre de ménages ayant emménagé entre 2 et 4 ans
    P12_MEN_ANEM0509	NUMERIC, --	Nombre de ménages ayant emménagé entre 5 et 9 ans
    P12_MEN_ANEM10P	NUMERIC, --	Nombre de ménages ayant emménagé depuis 10 ans ou plus
    P12_MEN_ANEM1019	NUMERIC, --	Nombre de ménages ayant emménagé entre 10 et 19 ans
    P12_MEN_ANEM2029	NUMERIC, --	Nombre de ménages ayant emménagé entre 20 et 29 ans
    P12_MEN_ANEM30P	NUMERIC, --	Nombre de ménages ayant emménagé depuis 30 ans ou plus
    P12_PMEN	NUMERIC, --	Population des ménages
    P12_PMEN_ANEM0002	NUMERIC, --	Population des ménages ayant emménagé depuis moins de 2 ans
    P12_PMEN_ANEM0204	NUMERIC, --	Population des ménages ayant emménagé entre 2 et 4 ans
    P12_PMEN_ANEM0509	NUMERIC, --	Population des ménages ayant emménagé entre 5 et 9 ans
    P12_PMEN_ANEM10P	NUMERIC, --	Population des ménages ayant emménagé depuis 10 ans ou plus
    P12_NBPI_RP_ANEM0002	NUMERIC, --	Nombre de pièces des résidences principales dans lesquelles le ménage a emménagé depuis moins de 2 ans
    P12_NBPI_RP_ANEM0204	NUMERIC, --	Nombre de pièces des résidences principales dans lesquelles le ménage a emménagé entre 2 et 4 ans
    P12_NBPI_RP_ANEM0509	NUMERIC, --	Nombre de pièces des résidences principales dans lesquelles le ménage a emménagé entre 5 et 9 ans
    P12_NBPI_RP_ANEM10P	NUMERIC, --	Nombre de pièces des résidences principales dans lesquelles le ménage a emménagé depuis 10 ans ou plus
    P12_RP_PROP	NUMERIC, --	Nombre de résidences principales occupées par propriétaires
    P12_RP_LOC	NUMERIC, --	Nombre de résidences principales occupées par locataires
    P12_RP_LOCHLMV	NUMERIC, --	Nombre de résidences principales HLM loué vide
    P12_RP_GRAT	NUMERIC, --	Nombre de résidences principales occupées gratuitement
    P12_NPER_RP	NUMERIC, --	Nombre de personnes des résidences principales
    P12_NPER_RP_PROP	NUMERIC, --	Nombre de personnes des résidences principales occupées par des propriétaires
    P12_NPER_RP_LOC	NUMERIC, --	Nombre de personnes des résidences principales occupées par des locataires
    P12_NPER_RP_LOCHLMV	NUMERIC, --	Nombre de personnes des résidences principales HLM louées vides
    P12_NPER_RP_GRAT	NUMERIC, --	Nombre de personnes des résidences principales occupées gratuitement
    P12_ANEM_RP	NUMERIC, --	Ancienneté totale d'emménagement dans les résidences principales en années
    P12_ANEM_RP_PROP	NUMERIC, --	Ancienneté totale d'emménagement dans les résidences principales occupées par des propriétaires en années
    P12_ANEM_RP_LOC	NUMERIC, --	Ancienneté totale d'emménagement dans les résidences principales occupées par des locataires en années
    P12_ANEM_RP_LOCHLMV	NUMERIC, --	Ancienneté totale d'emménagement dans les résidences principales HLM louées vides en années
    P12_ANEM_RP_GRAT	NUMERIC, --	Ancienneté totale d'emménagement dans les résidences principales occupées gratuitement en années
    P12_RP_SDB	NUMERIC, --	Nombre de résidences principales avec salle de bain, baignoire ou douche
    P12_RP_CCCOLL	NUMERIC, --	Nombre de résidences principales avec chauffage central collectif
    P12_RP_CCIND	NUMERIC, --	Nombre de résidences principales avec chauffage central individuel
    P12_RP_CINDELEC	NUMERIC, --	Nombre de résidences principales avec chauffage individuel électrique
    P12_RP_ELEC	NUMERIC, --	Nombre de résidences principales avec électricité dans le logement
    P12_RP_EAUCH	NUMERIC, --	Nombre de résidences principales avec eau chaude dans le logement
    P12_RP_BDWC	NUMERIC, --	Nombre de résidences principales avec baignoire ou douche et WC à l'intérieur du logement
    P12_RP_CHOS	NUMERIC, --	Nombre de résidences principales avec chauffe-eau solaire
    P12_RP_CLIM	NUMERIC, --	Nombre de résidences principales avec pièce climatisée
    P12_RP_TTEGOU	NUMERIC, --	Nombre de résidences principales avec tout à l'égout
    P12_RP_GARL	NUMERIC, --	Nombre de ménages disposant au moins d'un emplacement réservé au stationnement
    P12_RP_VOIT1P	NUMERIC, --	Nombre de ménages disposant au moins d'une voiture
    P12_RP_VOIT1	NUMERIC, --	Nombre de ménages disposant d'une voiture
    P12_RP_VOIT2P	NUMERIC, --	Nombre de ménages disposant de deux voitures ou plus
    P12_RP_HABFOR	NUMERIC, --	Nombre de résidences principales habitations de fortune
    P12_RP_CASE	NUMERIC, --	Nombre de résidences principales cases traditionnelles
    P12_RP_MIBOIS	NUMERIC, --	Nombre de résidences principales maisons ou immeubles en bois
    P12_RP_MIDUR	NUMERIC --	Nombre de résidences principales maisons ou immeubles en dur
);