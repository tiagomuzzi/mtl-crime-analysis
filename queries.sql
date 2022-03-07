DROP TABLE IF EXISTS mtlcrime;

CREATE TABLE mtlcrime (
	incident INT(6) NOT NULL PRIMARY KEY,
	category VARCHAR(255) NOT NULL,
	date DATE,
	postal_code VARCHAR(255),
	neighbourhood VARCHAR(255),
	boroughs VARCHAR(255),
	year YEAR,
	longitude DECIMAL (9,
		6),
	latitude DECIMAL (9,
		6)
);


 SELECT category, count(*)
 FROM mtlcrime
 GROUP BY(category)
 ORDER BY 2 DESC;

SELECT incident, category, boroughs, (SELECT MONTHNAME(date)) as month_date, `year`, longitude, latitude
FROM mtlcrime;

select * from mtlcrime;

ALTER TABLE mtlcrime
	ADD month_date VARCHAR(255) AFTER category;

SELECT *, ;
