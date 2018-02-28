-- DROP TABLE IF EXISTS insee_cc_pop_2012 CASCADE;
CREATE TABLE insee_cc_pop_2012 (	
    -- rowid SERIAL PRIMARY KEY,
    codgeo CHARACTER VARYING(5) NOT NULL UNIQUE, -- Code de la commune ou de l'arrondissement municipal
    reg CHARACTER VARYING(2) NOT NULL, -- Code de la région
    dep CHARACTER VARYING(3) NOT NULL, -- Code du département
    libgeo CHARACTER VARYING(70) NOT NULL, -- Libellé de la commune ou de l'arrondissement municipal
    P12_POP	NUMERIC, --	Population en 2012
    P12_POP0014	NUMERIC, --	Nombre de personnes de 0 à 14 ans
    P12_POP1529	NUMERIC, --	Nombre de personnes de 15 à 29 ans
    P12_POP3044	NUMERIC, --	Nombre de personnes de 30 à 44 ans
    P12_POP4559	NUMERIC, --	Nombre de personnes de 45 à 59 ans
    P12_POP6074	NUMERIC, --	Nombre de personnes de 60 à 74 ans
    P12_POP7589	NUMERIC, --	Nombre de personnes de 75 à 89 ans
    P12_POP90P	NUMERIC, --	Nombre de personnes de 90 ans ou plus
    P12_POPH	NUMERIC, --	Nombre total d'hommes
    P12_H0014	NUMERIC, --	Nombre d'hommes de 0 à 14 ans
    P12_H1529	NUMERIC, --	Nombre d'hommes de 15 à 29 ans
    P12_H3044	NUMERIC, --	Nombre d'hommes de 30 à 44 ans
    P12_H4559	NUMERIC, --	Nombre d'hommes de 45 à 59 ans
    P12_H6074	NUMERIC, --	Nombre d'hommes de 60 à 74 ans
    P12_H7589	NUMERIC, --	Nombre d'hommes de 75 à 89 ans
    P12_H90P	NUMERIC, --	Nombre d'hommes de 90 ans ou plus
    P12_H0019	NUMERIC, --	Nombre d'hommes de 0 à 19 ans
    P12_H2064	NUMERIC, --	Nombre d'hommes de 20 à 64 ans
    P12_H65P	NUMERIC, --	Nombre d'hommes de 65 ans ou plus
    P12_POPF	NUMERIC, --	Nombre total de femmes
    P12_F0014	NUMERIC, --	Nombre de femmes de 0 à 14 ans
    P12_F1529	NUMERIC, --	Nombre de femmes de 15 à 29 ans
    P12_F3044	NUMERIC, --	Nombre de femmes de 30 à 44 ans
    P12_F4559	NUMERIC, --	Nombre de femmes de 45 à 59 ans
    P12_F6074	NUMERIC, --	Nombre de femmes de 60 à 74 ans
    P12_F7589	NUMERIC, --	Nombre de femmes de 75 à 89 ans
    P12_F90P	NUMERIC, --	Nombre de femmes de 90 ans ou plus
    P12_F0019	NUMERIC, --	Nombre de femmes de 0 à 19 ans
    P12_F2064	NUMERIC, --	Nombre de femmes de 20 à 64 ans
    P12_F65P	NUMERIC, --	Nombre de femmes de 65 ans ou plus
    P12_POP01P	NUMERIC, --	Nombre de personnes de 1 an ou plus
    P12_POP01P_IRAN1	NUMERIC, --	Nombre de personnes de 1 an ou plus habitant 1 an auparavant le même logement
    P12_POP01P_IRAN2	NUMERIC, --	Nombre de personnes de 1 an ou plus habitant 1 an auparavant un autre logement de la même commune
    P12_POP01P_IRAN3	NUMERIC, --	Nombre de personnes de 1 an ou plus habitant 1 an auparavant une autre commune du même département
    P12_POP01P_IRAN4	NUMERIC, --	Nombre de personnes de 1 an ou plus habitant 1 an auparavant un autre département de la même région
    P12_POP01P_IRAN5	NUMERIC, --	Nombre de personnes de 1 an ou plus habitant 1 an auparavant une autre région de France métropolitaine
    P12_POP01P_IRAN6	NUMERIC, --	Nombre de personnes de 1 an ou plus habitant 1 an auparavant dans un département d'outre-mer
    P12_POP01P_IRAN7	NUMERIC, --	Nombre de personnes de 1 an ou plus habitant 1 an auparavant hors de France métropolitaine ou d'un Département d'outre-mer 
    P12_POP0114_IRAN2P	NUMERIC, --	Nombre de personnes de 1 à 14 ans habitant 1 an auparavant un autre logement
    P12_POP0114_IRAN2	NUMERIC, --	Nombre de personnes de 1 à 14 ans habitant 1 an auparavant un autre logement de la même commune
    P12_POP0114_IRAN3P	NUMERIC, --	Nombre de personnes de 1 à 14 ans habitant 1 an auparavant une autre commune
    P12_POP1524_IRAN2P	NUMERIC, --	Nombre de personnes de 15 à 24 ans habitant 1 an auparavant un autre logement
    P12_POP1524_IRAN2	NUMERIC, --	Nombre de personnes de 15 à 24 ans habitant 1 an auparavant un autre logement de la même commune
    P12_POP1524_IRAN3P	NUMERIC, --	Nombre de personnes de 15 à 24 ans habitant 1 an auparavant une autre commune
    P12_POP2554_IRAN2P	NUMERIC, --	Nombre de personnes de 25 à 54 ans habitant 1 an auparavant un autre logement
    P12_POP2554_IRAN2	NUMERIC, --	Nombre de personnes de 25 à 54 ans habitant 1 an auparavant un autre logement de la même commune
    P12_POP2554_IRAN3P	NUMERIC, --	Nombre de personnes de 25 à 54 ans habitant 1 an auparavant une autre commune
    P12_POP55P_IRAN2P	NUMERIC, --	Nombre de personnes de 55 ans ou plus habitant 1 an auparavant un autre logement
    P12_POP55P_IRAN2	NUMERIC, --	Nombre de personnes de 55 ans ou plus habitant 1 an auparavant un autre logement de la même commune
    P12_POP55P_IRAN3P	NUMERIC, --	Nombre de personnes de 55 ans ou plus habitant 1 an auparavant une autre commune
    C12_POP15P	NUMERIC, --	Nombre de personnes de 15 ans ou plus 
    C12_POP15P_CS1	NUMERIC, --	Nombre de personnes de 15 ans ou plus Agriculteurs exploitants
    C12_POP15P_CS2	NUMERIC, --	Nombre de personnes de 15 ans ou plus Artisans, Commerçants, Chefs d'entreprise
    C12_POP15P_CS3	NUMERIC, --	Nombre de personnes de 15 ans ou plus Cadres et Professions intellectuelles supérieures
    C12_POP15P_CS4	NUMERIC, --	Nombre de personnes de 15 ans ou plus Professions intermédiaires
    C12_POP15P_CS5	NUMERIC, --	Nombre de personnes de 15 ans ou plus Employés
    C12_POP15P_CS6	NUMERIC, --	Nombre de personnes de 15 ans ou plus Ouvriers
    C12_POP15P_CS7	NUMERIC, --	Nombre de personnes de 15 ans ou plus Retraités
    C12_POP15P_CS8	NUMERIC, --	Nombre de personnes de 15 ans ou plus Autres sans activité professionnelle
    C12_H15P	NUMERIC, --	Nombre d'hommes de 15 ans ou plus 
    C12_H15P_CS1	NUMERIC, --	Nombre d'hommes de 15 ans ou plus Agriculteurs exploitants
    C12_H15P_CS2	NUMERIC, --	Nombre d'hommes de 15 ans ou plus Artisans, Commerçants, Chefs d'entreprise
    C12_H15P_CS3	NUMERIC, --	Nombre d'hommes de 15 ans ou plus Cadres et Professions intellectuelles supérieures
    C12_H15P_CS4	NUMERIC, --	Nombre d'hommes de 15 ans ou plus Professions intermédiaires
    C12_H15P_CS5	NUMERIC, --	Nombre d'hommes de 15 ans ou plus Employés
    C12_H15P_CS6	NUMERIC, --	Nombre d'hommes de 15 ans ou plus Ouvriers
    C12_H15P_CS7	NUMERIC, --	Nombre d'hommes de 15 ans ou plus Retraités
    C12_H15P_CS8	NUMERIC, --	Nombre d'hommes de 15 ans ou plus Autres sans activité professionnelle
    C12_F15P	NUMERIC, --	Nombre de femmes de 15 ans ou plus 
    C12_F15P_CS1	NUMERIC, --	Nombre de femmes de 15 ans ou plus Agriculteurs exploitants
    C12_F15P_CS2	NUMERIC, --	Nombre de femmes de 15 ans ou plus Artisans, Commerçants, Chefs d'entreprise
    C12_F15P_CS3	NUMERIC, --	Nombre de femmes de 15 ans ou plus Cadres et Professions intellectuelles supérieures
    C12_F15P_CS4	NUMERIC, --	Nombre de femmes de 15 ans ou plus Professions intermédiaires
    C12_F15P_CS5	NUMERIC, --	Nombre de femmes de 15 ans ou plus Employés
    C12_F15P_CS6	NUMERIC, --	Nombre de femmes de 15 ans ou plus Ouvriers
    C12_F15P_CS7	NUMERIC, --	Nombre de femmes de 15 ans ou plus Retraités
    C12_F15P_CS8	NUMERIC, --	Nombre de femmes de 15 ans ou plus Autres sans activité professionnelle
    C12_POP1524	NUMERIC, --	Nombre de personnes de 15 à 24 ans
    C12_POP1524_CS1	NUMERIC, --	Nombre de personnes de 15 à 24 ans Agriculteurs exploitants
    C12_POP1524_CS2	NUMERIC, --	Nombre de personnes de 15 à 24 ans Artisans, commerçants, chefs d'entreprise
    C12_POP1524_CS3	NUMERIC, --	Nombre de personnes de 15-24 ans Cadres et Professions intellectuelles supérieures
    C12_POP1524_CS4	NUMERIC, --	Nombre de personnes de 15 à 24 ans Professions intermédiaires
    C12_POP1524_CS5	NUMERIC, --	Nombre de personnes de 15 à 24 ans Employés
    C12_POP1524_CS6	NUMERIC, --	Nombre de personnes de 15 à 24 ans Ouvriers
    C12_POP1524_CS7	NUMERIC, --	Nombre de personnes de 15 à 24 ans Retraités
    C12_POP1524_CS8	NUMERIC, --	Nombre de personnes de 15 à 24 ans Autres sans activité professionnelle
    C12_POP2554	NUMERIC, --	Nombre de personnes de 25 à 54 ans
    C12_POP2554_CS1	NUMERIC, --	Nombre de personnes de 25 à 54 ans Agriculteurs exploitants
    C12_POP2554_CS2	NUMERIC, --	Nombre de personnes de 25 à 54 ans Artisans, commerçants, chefs d'entreprise
    C12_POP2554_CS3	NUMERIC, --	Nombre de personnes de 25 à 54 ans Cadres et Professions intellectuelles supérieures
    C12_POP2554_CS4	NUMERIC, --	Nombre de personnes de 25 à 54 ans Professions intermédiaires
    C12_POP2554_CS5	NUMERIC, --	Nombre de personnes de 25 à 54 ans Employés
    C12_POP2554_CS6	NUMERIC, --	Nombre de personnes de 25 à 54 ans Ouvriers
    C12_POP2554_CS7	NUMERIC, --	Nombre de personnes de 25 à 54 ans Retraités
    C12_POP2554_CS8	NUMERIC, --	Nombre de personnes de 25 à 54 ans Autres sans activité professionnelle
    C12_POP55P	NUMERIC, --	Nombre de personnes de 55 ans ou plus
    C12_POP55P_CS1	NUMERIC, --	Nombre de personnes de 55 ans ou plus Agriculteurs exploitants
    C12_POP55P_CS2	NUMERIC, --	Nombre de personnes de 55 ans ou plus Artisans, commerçants, chefs d'entreprise
    C12_POP55P_CS3	NUMERIC, --	Nombre de personnes de 55 ans ou plus Cadres et Professions intellectuelles supérieures
    C12_POP55P_CS4	NUMERIC, --	Nombre de personnes de 55 ans ou plus Professions intermédiaires
    C12_POP55P_CS5	NUMERIC, --	Nombre de personnes de 55 ans ou plus Employés
    C12_POP55P_CS6	NUMERIC, --	Nombre de personnes de 55 ans ou plus Ouvriers
    C12_POP55P_CS7	NUMERIC, --	Nombre de personnes de 55 ans ou plus Retraités
    C12_POP55P_CS8	NUMERIC --	Nombre de personnes de 55 ans ou plus Autres sans activité professionnelle
);
