-- CREATE /*OR UPDATE*/ VIEW liste_arrondissements_2014 AS
SELECT 
    cog_arrondissements_2014.dep || cog_arrondissements_2014.ar AS codgeo,
    REPLACE(
        REPLACE(
            REPLACE(CAST(cog_arrondissements_2014.artmin AS TEXT),
                    CAST('(' AS TEXT),
                    CAST('' AS TEXT)),
            CAST(')' AS TEXT),
            CAST(' ' AS TEXT)),
        CAST('L'' ' AS TEXT),
        CAST('L''' AS TEXT)) || cog_arrondissements_2014.nccenr AS libgeo
FROM
    cog_arrondissements_2014
ORDER BY
    codgeo
;
