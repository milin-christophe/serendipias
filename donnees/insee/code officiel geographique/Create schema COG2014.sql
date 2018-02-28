-- DROP TABLE IF EXISTS cog_regions_2014 CASCADE;
CREATE TABLE cog_regions_2014 (
    -- rowid SERIAL PRIMARY KEY,
    reg CHARACTER VARYING(2) NOT NULL UNIQUE, -- Code région
    cheflieu CHARACTER VARYING(5) NOT NULL, -- Code de la commune chef-lieu
    tncc CHARACTER VARYING(1), -- Type de nom en clair
    ncc CHARACTER VARYING(70) NOT NULL, -- Libellé en lettres majuscules
    nccenr CHARACTER VARYING(70) NOT NULL -- Libellé enrichi
);
CREATE INDEX reg_2014_idx ON cog_regions_2014(reg);


-- DROP TABLE IF EXISTS cog_regions_2016 CASCADE;
CREATE TABLE cog_regions_2016 (
    -- rowid SERIAL PRIMARY KEY,
    reg CHARACTER VARYING(2) NOT NULL UNIQUE, -- Code région
    cheflieu CHARACTER VARYING(5) NOT NULL, -- Code de la commune chef-lieu
    tncc CHARACTER VARYING(1), -- Type de nom en clair
    ncc CHARACTER VARYING(70) NOT NULL, -- Libellé en lettres majuscules
    nccenr CHARACTER VARYING(70) NOT NULL -- Libellé enrichi
);
CREATE INDEX reg_2016_idx ON cog_regions_2016(reg);


-- DROP TABLE IF EXISTS cog_departements_2014 CASCADE;
CREATE TABLE cog_departements_2014 (
    -- rowid SERIAL PRIMARY KEY,
    reg CHARACTER VARYING(2) NOT NULL, -- Code région
    dep CHARACTER VARYING(3) NOT NULL UNIQUE, -- Code département
    cheflieu CHARACTER VARYING(5) NOT NULL, -- Code de la commune chef-lieu
    tncc CHARACTER VARYING(1) NOT NULL, -- Type de nom en clair
    ncc CHARACTER VARYING(70) NOT NULL, -- Libellé en lettres majuscules
    nccenr CHARACTER VARYING(70) NOT NULL, -- Libellé enrichi
    FOREIGN KEY (reg) REFERENCES cog_regions_2014 (reg)
);
CREATE INDEX dep_idx ON cog_departements_2014(dep);


-- DROP TABLE IF EXISTS cog_arrondissements_2014 CASCADE;
CREATE TABLE cog_arrondissements_2014 (
    -- rowid SERIAL PRIMARY KEY,
    reg CHARACTER VARYING(2) NOT NULL, -- Code région
    dep CHARACTER VARYING(3) NOT NULL, -- Code département
    ar CHARACTER VARYING(1) NOT NULL, -- Code arrondissement
    cheflieu CHARACTER VARYING(5), -- Code de la commune chef-lieu    
    tncc CHARACTER VARYING(1), -- Type de nom en clair
    artmaj CHARACTER VARYING(5),-- Article du libellé en lettres majuscules
    ncc CHARACTER VARYING(70) NOT NULL,-- Libellé en lettres majuscules
    artmin CHARACTER VARYING(5), -- Article du libellé enrichi
    nccenr CHARACTER VARYING(70) NOT NULL, -- Libellé enrichi
    FOREIGN KEY (reg) REFERENCES cog_regions_2014 (reg),
    FOREIGN KEY (dep) REFERENCES cog_departements_2014 (dep)
);
CREATE INDEX ar_idx ON cog_arrondissements_2014(dep,ar);


-- DROP TABLE IF EXISTS cog_cantons_2014 CASCADE;
CREATE TABLE cog_cantons_2014 (
    -- rowid SERIAL PRIMARY KEY,
    reg CHARACTER VARYING(2) NOT NULL, -- Code région
    dep CHARACTER VARYING(3) NOT NULL, -- Code département
    ar CHARACTER VARYING(1), -- Code arrondissement
    ct CHARACTER VARYING(2) NOT NULL, -- Code canton
	typct CHARACTER VARYING(1), -- Composition communale du canton {commune(s) entière(s); fraction d'une commune + communes entières; fractions de plusieurs communes + commune(s) entière(s); fraction de commune; fractions de plusieurs communes}
    cheflieu CHARACTER VARYING(5), -- Code de la commune chef-lieu
    tncc CHARACTER VARYING(1), -- Type de nom en clair
    artmaj CHARACTER VARYING(5),-- Article du libellé en lettres majuscules
    ncc CHARACTER VARYING(70) NOT NULL,-- Libellé en lettres majuscules
    artmin CHARACTER VARYING(5), -- Article du libellé enrichi
    nccenr CHARACTER VARYING(70) NOT NULL, -- Libellé enrichi
    FOREIGN KEY (reg) REFERENCES cog_regions_2014 (reg),
    FOREIGN KEY (dep) REFERENCES cog_departements_2014 (dep)   
);
CREATE INDEX ct_idx ON cog_cantons_2014(dep,ct);


-- DROP TABLE IF EXISTS cog_communes_2014 CASCADE;
CREATE TABLE cog_communes_2014 (
    -- rowid SERIAL PRIMARY KEY,
    cdc CHARACTER VARYING(1) NOT NULL, -- Découpage de la commune en cantons {non découpée; fraction cantonale; canton non précisé}
    cheflieu CHARACTER VARYING(1) NOT NULL, -- Chef-lieu de {n/a; canton; arrondissement; département; région}
    reg CHARACTER VARYING(2) NOT NULL, -- Code région
    dep CHARACTER VARYING(3) NOT NULL, -- Code département
    com CHARACTER VARYING(3) NOT NULL, -- Code commune
    ar CHARACTER VARYING(1), -- Code arrondissement
    ct CHARACTER VARYING(2), -- Code canton
    tncc CHARACTER VARYING(1), -- Type de nom en clair
    artmaj CHARACTER VARYING(5),-- Article du libellé en lettres majuscules
    ncc CHARACTER VARYING(70) NOT NULL,-- Libellé en lettres majuscules
    artmin CHARACTER VARYING(5), -- Article du libellé enrichi
    nccenr CHARACTER VARYING(70) NOT NULL, -- Libellé enrichi
    FOREIGN KEY (reg) REFERENCES cog_regions_2014 (reg),
    FOREIGN KEY (dep) REFERENCES cog_departements_2014 (dep)
);
CREATE INDEX com_idx ON cog_communes_2014(dep,com);


-- DROP TABLE IF EXISTS cog_zones_supracommunales_2014 CASCADE;
CREATE TABLE cog_zones_supracommunales_2014(
    -- rowid SERIAL PRIMARY KEY,
    nivgeo CHARACTER VARYING(6) NOT NULL, -- Niveau géographique
    codgeo CHARACTER VARYING(9) NOT NULL, -- Code géographique
    libgeo CHARACTER VARYING(70) NOT NULL, -- Libellé géographique
    nb_com INTEGER -- Nombre de communes
);
CREATE INDEX zones_supracommunales_idx ON cog_zones_supracommunales_2014(codgeo);


-- DROP TABLE IF EXISTS cog_epci_2014 CASCADE;
CREATE TABLE cog_epci_2014(
    -- rowid SERIAL PRIMARY KEY,
    epci CHARACTER VARYING(9), -- Code SIREN de l'établissement public à fiscalité propre
    libepci CHARACTER VARYING(70), -- Libellé de l'établissement public à fiscalité propre    
    nature_epci CHARACTER VARYING(5) -- Nature d'établissement public (
                                        -- CA : Communauté d'agglomération ;
                                        -- CC : Communauté de communes ;
                                        -- CU : Communauté urbaine ; 
                                        -- ME : Métropole ;
                                        -- nd : non déterminé ; 
                                        -- SAN : Syndicat d'agglomération nouvelle.
);
CREATE INDEX epci_idx ON cog_epci_2014(epci);


-- DROP TABLE IF EXISTS cog_appartenance_communes_2014 CASCADE;
CREATE TABLE cog_appartenance_communes_2014(
    -- rowid SERIAL PRIMARY KEY,
    codgeo CHARACTER VARYING(5) NOT NULL UNIQUE, -- Code géographique de la commune
    libgeo CHARACTER VARYING(70) NOT NULL, -- Libellé géographique
    dep CHARACTER VARYING(3) NOT NULL, -- Code département
    reg CHARACTER VARYING(2) NOT NULL, -- Code région
    reg2016 CHARACTER VARYING(2) NOT NULL, -- Code région à partir de 2016
    epci CHARACTER VARYING(9), -- Code SIREN de l'établissement public à fiscalité propre
    nature_epci CHARACTER VARYING(5), -- Nature d'établissement public
    ar CHARACTER VARYING(4), -- Code arrondissement
    cv CHARACTER VARYING(5) NOT NULL, -- Code du canton ville
    ze2010 CHARACTER VARYING(4) NOT NULL, -- Code zone d'emploi 2010
    uu2010 CHARACTER VARYING(5) NOT NULL, -- Code unité urbaine 2010
    tuu2011 CHARACTER VARYING(1) NOT NULL, -- Tranche d'unité urbaine calculée sur la population 2011
    tduu2011 CHARACTER VARYING(2) NOT NULL, -- Tranche détaillée d'unité urbaine calculée sur la population 2011
    au2010 CHARACTER VARYING(3) NOT NULL, -- Code aire urbaine 2010
    tau2011 CHARACTER VARYING(2) NOT NULL, -- Tranche d'aire urbaine calculée sur la population 2011
    cataeu2010 CHARACTER VARYING(3) NOT NULL, -- Catégorie de communes dans le zonage en aires urbaines 2010 (selon nombre d'emplois).
    bv2012 CHARACTER VARYING(5) NOT NULL,-- Code du bassin de vie en 2012
    FOREIGN KEY (reg) REFERENCES cog_regions_2014 (reg),
    FOREIGN KEY (dep) REFERENCES cog_departements_2014 (dep)  
);
CREATE INDEX appartenance_communes_idx ON cog_appartenance_communes_2014(codgeo);
