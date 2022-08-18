--실습3 # FWGHSOLO
--1
SELECT smoking,
count(*)
FROM healthcare
GROUP BY smoking;

--2
SELECT is_drinking,
count(*)
FROM healthcare
GROUP BY is_drinking;

--3
SELECT is_drinking, count(*)
FROM healthcare
WHERE blood_pressure >= 200 and blood_pressure != ''
GROUP BY is_drinking;

--4
SELECT sido,
count(*)
FROM healthcare
GROUP BY sido
HAVING count(*) >= 50000; 

--5
SELECT height,
count(*)
from healthcare
GROUP BY height;

--6
SELECT height, weight, count(*)
FROM healthcare
GROUP BY height, weight
ORDER BY height ASC;

--7
SELECT is_drinking, avg(waist), count(*)
FROM healthcare
GROUP BY is_drinking
ORDER by is_drinking ASC;

--8
SELECT gender as '성', round(avg(va_left),2) as '왼쪽 평균시력', round(avg(va_right),2) as '오른쪽 평균시력'
FROM healthcare
GROUP BY "성";

--9
SELECT age, AVG(height) AS '평균 키', AVG(weight) AS '평균 몸무게' 
FROM healthcare 
GROUP BY age 
HAVING "평균 키" >= 160 AND "평균 몸무게" >= 60;

--10
SELECT is_drinking, smoking, avg(weight/(height*0.01)*(height*0.01)) as 'BMI'
FROM healthcare
WHERE is_drinking != '' and smoking != ''
GROUP BY is_drinking, smoking;