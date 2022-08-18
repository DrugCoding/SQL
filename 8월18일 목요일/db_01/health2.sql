-- FWGHSOLO
--1
SELECT count(*) from healthcare;
--2
SELECT max(age), min(age) from healthcare;
--3
SELECT max(height),min(height),max(height),min(height) from healthcare;
--4
SELECT count(*) from healthcare where height >= 160 and height <= 170;
--5
SELECT id, waist from healthcare where is_drinking = 1 AND waist != '' ORDER by waist DESC LIMIT 5;
--6
SELECT count(*) from healthcare WHERE va_left >= 1.5 and va_right >= 1.5 and is_drinking = 1;
--8
SELECT avg(waist) from healthcare WHERE blood_pressure >= 140;
--10
SELECT id, height, weight from healthcare ORDER BY height DESC, weight DESC limit 1 OFFSET 1;
