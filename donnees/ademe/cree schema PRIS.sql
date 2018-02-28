-- DROP TABLE IF EXISTS preh_pts_contact CASCADE;
CREATE TABLE preh_pts_contact (
    rowid SERIAL PRIMARY KEY,
    type_contact CHARACTER VARYING(70) NOT NULL,
    eie BOOLEAN NOT NULL,
    nom CHARACTER VARYING(255) NOT NULL,
    adresse_1 CHARACTER VARYING(255) NOT NULL,
    adresse_2 CHARACTER VARYING(255),
    adresse_3 CHARACTER VARYING(255),
    code_postal CHARACTER VARYING(5) NOT NULL,
    ville CHARACTER VARYING(70) NOT NULL,
    codgeo CHARACTER VARYING(5) NOT NULL,
    dep CHARACTER VARYING(3) NOT NULL,
    reg CHARACTER VARYING(2) NOT NULL
);


-- DROP TABLE IF EXISTS preh_types_qualificatif CASCADE;
CREATE TABLE preh_types_qualificatif (
    rowid SERIAL PRIMARY KEY,
    type CHARACTER VARYING(70) NOT NULL
);


-- DROP TABLE IF EXISTS preh_qualificatifs CASCADE;
CREATE TABLE preh_qualificatifs (
    rowid SERIAL PRIMARY KEY,
    preh_pts_contact_id INTEGER NOT NULL,
    preh_types_qualificatif_id INTEGER NOT NULL,
    permanence BOOLEAN NOT NULL,
    num_tel_local CHARACTER VARYING(20),
    num_accueil CHARACTER VARYING(20),
    num_noir CHARACTER VARYING(20),
    email CHARACTER VARYING(70),
    website CHARACTER VARYING(255),
    horaire_accueil CHARACTER VARYING(255),
    horaire_tel_local CHARACTER VARYING(255),
    FOREIGN KEY (preh_pts_contact_id) REFERENCES preh_pts_contact(id),
    FOREIGN KEY (preh_types_qualificatif_id) REFERENCES preh_types_qualificatif(id)
);


-- DROP TABLE IF EXISTS preh_communes CASCADE;
CREATE TABLE preh_communes (
    rowid SERIAL PRIMARY KEY,
    codgeo CHARACTER VARYING(5) NOT NULL,
    code_postal CHARACTER VARYING(5) NOT NULL,
    ville CHARACTER VARYING(70) NOT NULL
);


-- DROP TABLE IF EXISTS preh_zones_chalandise CASCADE;
CREATE TABLE preh_zones_chalandise (
    preh_qualificatifs_id INTEGER NOT NULL,
    preh_communes_id INTEGER NOT NULL,
    FOREIGN KEY (preh_qualificatifs_id) REFERENCES preh_qualificatifs(id),
    FOREIGN KEY (preh_communes_id) REFERENCES preh_communes(id)
);
