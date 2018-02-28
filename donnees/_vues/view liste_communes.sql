-- CREATE /*OR UPDATE*/ VIEW liste_communes_2014 AS
SELECT 
    cog_communes_2014.dep || cog_communes_2014.com AS codgeo,
    REPLACE(
        REPLACE(
            REPLACE(CAST(cog_communes_2014.artmin AS TEXT),
                    CAST('(' AS TEXT),
                    CAST('' AS TEXT)),
            CAST(')' AS TEXT),
            CAST(' ' AS TEXT)),
        CAST('L'' ' AS TEXT),
        CAST('L''' AS TEXT)) || cog_communes_2014.nccenr AS libgeo
FROM
    cog_communes_2014
ORDER BY
    libgeo
;