SELECT od.DTSEM AS code, 
	od.DTVEM AS full_name, 
	od.DTTTOP AS area,
	SUBSTR(od.DTOPE, 1, 5) AS postal,
	ol.TRANS AS transport,
	ol.HERNV AS distance
FROM ODSDEV od
LEFT JOIN ODSLOU ol
	ON od.DTSEM = ol.BSSEM
WHERE od.DTLUN IS NOT NULL
	AND od.DTIST IS NOT NULL
	AND ol.HRVEN NOT IN ("2", "3", "4");
