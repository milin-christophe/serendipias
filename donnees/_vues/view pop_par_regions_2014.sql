-- CREATE /*OR UPDATE*/ VIEW pop_par_regions_2014 AS
SELECT
    geo.Geometry AS geometrie,
    geo.reg AS controle,
    pop.pop_code_region AS codgeo,
    geo.nccenr AS libgeo,
    pop.pop_population_region AS population
FROM
    geofla_regions_metropole_2014 as geo
LEFT JOIN(
    SELECT
        insee_cc_pop_2012.reg AS pop_code_region,
        CAST(sum(insee_cc_pop_2012.p12_pop) AS INTEGER) AS pop_population_region
    FROM
        insee_cc_pop_2012
    WHERE
        CAST(insee_cc_pop_2012.reg AS INTEGER) > 10
    GROUP BY
        insee_cc_pop_2012.reg
    ORDER BY
        pop_code_region
    ) AS pop
ON
    geo.reg = pop_code_region
ORDER BY
    libgeo;

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
    'pop_par_regions_2014', -- view-name
    'geometrie',
    'rowid', -- clé primaire automatiquement créée sous SQLite
    'geofla_regions_metropole_2014',
    'geometry',
	1
    ); */