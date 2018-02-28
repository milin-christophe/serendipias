-- CREATE /*OR UPDATE*/ VIEW liste_cantons_2014 AS
SELECT 
    cog_cantons_2014.dep || cog_cantons_2014.ct AS codgeo,
    replace(
        replace(
            replace(CAST(cog_cantons_2014.artmin AS TEXT),
                    CAST('(' AS TEXT),
                    CAST('' AS TEXT)),
            CAST(')' AS TEXT),
            CAST(' ' AS TEXT)),
        CAST('L'' ' AS TEXT),
        CAST('L''' AS TEXT)) || cog_cantons_2014.nccenr AS libgeo
FROM
    cog_cantons_2014
ORDER BY
    codgeo
;
