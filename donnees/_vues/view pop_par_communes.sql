-- CREATE /*OR UPDATE*/ VIEW population_par_communes AS
SELECT 
	geo.Geometry AS geometrie,
	geo.INSEE_COM AS controle,
	pop.codgeo AS codgeo,
	pop.libgeo AS libgeo,
	pop.P12_POP AS population
FROM geofla_communes_metropole_2014 AS geo
LEFT JOIN insee_cc_pop_2012 AS pop
ON geo.INSEE_COM = pop.codgeo;


-- Il est également nécessaire d'enregistrer la VUE
-- dans la table views_geometry_columns, afin de
-- la transformer en véritable vue spatiale.

/* INSERT INTO views_geometry_columns(
    view_name,
    view_geometry,
    view_rowid,
    f_table_name,
    f_geometry_column,
	read_only)
VALUES(
    'population_par_communes', -- view-name
    'geometrie',
    'rowid', -- clé primaire automatiquement créée sous SQLite
    'geofla_communes_metropole_2014',
    'geometry',
	1
    ); */