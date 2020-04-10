WITH andamentocomuni AS (
    SELECT data, comune, totale_casi FROM covid19_com_prov_en_aggregati
ORDER BY data
)
SELECT *
  FROM andamentocomuni
 PIVOT (MAX(totale_casi) FOR comune IN ("Agira","Aidone","Assoro","Barrafranca","Calascibetta","Catenanuova","Centuripe","Cerami","Enna","Gagliano Castelferrato","Leonforte","Nicosia","Nissoria","Piazza Armerina","Pietraperzia","Regalbuto","Sperlinga","Troina","Valguarnera Caropepe","Villarosa"))
 ORDER BY data