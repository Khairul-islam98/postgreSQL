
SHOW timezone;

SELECT NOW(); 

CREATE TABLE timez (tz TIMESTAMP without time zone, tsz TIMESTAMP with time zone);


INSERT INTO timez (tz, tsz) VALUES ('2021-01-01 12:00:00', '2021-01-01 12:00:00');

SELECT * FROM timez;


SELECT CURRENT_DATE;
SELECT CURRENT_TIME; 

SELECT now()::date; 


SELECT to_char(now(), 'DDD')


SELECT CURRENT_DATE - INTERVAL '1 year 2 months 3 days';


SELECT age (CURRENT_DATE, '1999-06-27')

SELECT extract(year from '2024-01-01'::date)