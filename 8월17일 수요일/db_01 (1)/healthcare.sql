sqlite> select count(*) from healthcare;
-- count(*)
-- --------
-- 1000000
sqlite> select max(age), min(age) from healthcare;
-- max(age)  min(age)
-- --------  --------
-- 18        9
select max(height),min(height),max(weight),min(weight) from healthcare;
-- max(height)  min(height)  max(weight)  min(weight)
-- -----------  -----------  -----------  -----------
-- 195          130          135          30
SELECT count(*) from healthcare where height >= 160 and height <= 170;
-- count()
-- -------
-- 516930
SELECT id, waist FROM healthcare where is_drinking = 1 ORDER BY waist DESC LIMIT 5;
-- id     waist
-- -----  -----
-- 15583
-- 20143
-- 45103
-- 52074
-- 56063
SELECT count() from healthcare WHERE va_left >= 1.5 AND va_right >= 1.5 AND is_drinking = 1;
-- count()
-- -------
-- 36697
SELECT count(blood_pressure) from healthcare WHERE blood_pressure < 120;
-- count(blood_pressure)
-- ---------------------
-- 360808
SELECT AVG(waist) from healthcare WHERE blood_pressure >= 140;
-- AVG(waist)
-- ----------------
-- 85.8665098512525
SELECT AVG(height), AVG(weight) from healthcare WHERE gender = 1;
-- AVG(height)       AVG(weight)
-- ----------------  ----------------
-- 167.452735422145  69.7131620222875
SELECT id, height, weight from healthcare ORDER BY height DESC, weight DESC LIMIT 1 OFFSET 1;
-- id      height  weight
-- ------  ------  ------
-- 836005  195     110
SELECT count(*) from healthcare WHERE (weight*10000/(height*height)) >= 30;
-- count(*)
-- --------
-- 53121
SELECT id, (weight*10000/(height*height)) AS BMI from healthcare WHERE smoking = 3 ORDER BY (weight*10000/(height*height)) DESC LIMIT 5;
-- id      BMI
-- ------  ---
-- 231431  50
-- 934714  49
-- 722707  48
-- 947281  47
-- 948801  47