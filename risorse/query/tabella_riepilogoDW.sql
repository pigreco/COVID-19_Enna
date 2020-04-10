-- query data.world, per creare tabella di riepilogo https://www.datawrapper.de/_/Kv6Cc/
SELECT totale_casi AS `Casi`, deceduti AS `Deceduti`, guariti AS `Guariti`
FROM
(
SELECT * FROM
(SELECT
CAST(sum(totale_casi) AS STRING) totale_casi,
CAST(sum(deceduti) AS STRING) deceduti,
CAST(sum(guariti) AS STRING) guariti
from covid19_com_prov_en_aggregati group by covid19_com_prov_en_aggregati.data
ORDER by data DESC LIMIT 1) valoreassoluto
UNION ALL
SELECT * FROM
(SELECT
'Lo <b>' + LEFT(CAST((sum(totale_casi)/(SELECT sum(totale) FROM pop_res_20190101)*100) AS STRING),4) + '%</b> della popolazione provinciale' totale_casi,
'Lo <b>' + LEFT(CAST((sum(deceduti)/(SELECT sum(totale) FROM pop_res_20190101)*100) as STRING),5) + '%</b> della popolazione provinciale' deceduti,
'Lo <b>' + LEFT(CAST((sum(guariti)/(SELECT sum(totale) FROM pop_res_20190101)*100) AS STRING), 4) + '%</b> della popolazione provinciale' guariti
FROM covid19_com_prov_en_aggregati group by covid19_com_prov_en_aggregati.data
ORDER by data DESC LIMIT 1) valorepercentuale
UNION ALL
SELECT * FROM
(SELECT
CAST(cast((sum(totale_casi)*100000/(SELECT sum(totale) FROM pop_res_20190101)) AS INTEGER) AS STRING) + ' su <b>100.000</b> abitanti' totale_casi,
CAST(cast((sum(deceduti)*100000/(SELECT sum(totale) FROM pop_res_20190101)) AS INTEGER) AS STRING) + ' su <b>100.000</b> abitanti' deceduti,
CAST(cast((sum(guariti)*100000/(SELECT sum(totale) FROM pop_res_20190101)) AS INTEGER) AS STRING) + ' su <b>100.000</b> abitanti' guariti
from covid19_com_prov_en_aggregati group by covid19_com_prov_en_aggregati.data
ORDER by data DESC LIMIT 1) valorepercentomila
UNION ALL
SELECT * FROM
(SELECT
'1 ogni <b>' + CAST(cast(100000/(sum(totale_casi)*100000/(SELECT sum(totale) FROM pop_res_20190101)) AS INTEGER) AS STRING) + '</b> abitanti' totale_casi,
'1 ogni <b>' + CAST(cast(100000/(sum(deceduti)*100000/(SELECT sum(totale) FROM pop_res_20190101)) AS INTEGER) AS STRING) + '</b> abitanti' deceduti,
'1 ogni <b>' + CAST(cast(100000/(sum(guariti)*100000/(SELECT sum(totale) FROM pop_res_20190101)) AS INTEGER) AS STRING) + '</b> abitanti' guariti
from covid19_com_prov_en_aggregati group by covid19_com_prov_en_aggregati.data
ORDER by data DESC LIMIT 1) valorepercentomila
) AS insieme;