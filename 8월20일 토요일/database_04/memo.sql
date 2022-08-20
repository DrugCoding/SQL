--1
SELECT *
from tables;
--3
SELECT *
FROM albums
ORDER BY Title DESC
LIMIT 5;
--4
SELECT count(CustomerId) as '고객 수'
FROM customers;
--5
SELECT country, FirstName as '성', LastName as '이름'
FROM customers
WHERE country = 'USA'
order by "이름" DESC
LIMIT 5;
--6
SELECT count(*) as '송장수'
FROM invoices
WHERE BillingPostalCode != 'NULL';
--7
SELECT *
FROM invoices
WHERE BillingState IS NULL
ORDER BY InvoiceDate DESC
LIMIT 5;
--8

--9
SELECT CustomerId, FirstName, LastName
FROM customers
WHERE substr(FirstName, 1, 1) = 'L'
ORDER BY CustomerId ASC;
--100
SELECT count(*) as '고객 수', Country
from customers
GROUP BY Country
ORDER BY "고객 수" DESC
LIMIT 5;


--11
SELECT ArtistId, count(*) as '앨범 수'
FROM albums
GROUP BY ArtistId
order BY "앨범 수" DESC
LIMIT 1;
--12
SELECT ArtistId, count(*) as '앨범 수'
FROM albums
WHERE 

SELECT ArtistId, count(*) as '앨범 수'
FROM albums
GROUP BY ArtistId
HAVING "앨범 수" >= 10
ORDER BY "앨범 수" DESC;


--13
SELECT count(*) as '고객 수',
Country,
State
FROM customers
WHERE State NOTNULL
GROUP BY Country, State
ORDER BY "고객 수" DESC, Country DESC
LIMIT 5;
--14
SELECT CustomerId, CASE WHEN Fax IS NULL THEN 'X' ELSE 'O' END  as 'Fax 유/무'
FROM customers
order by CustomerId ASC
LIMIT 5;



--1
--3
SELECT *
FROM albums
ORDER BY Title DESC
LIMIT 5;
--4
SELECT count(CustomerId) as '고객 수'
from customers;
--5
SELECT Country as '나라', FirstName as '성', LastName as '이름'
FROM customers
WHERE Country = 'USA'
ORDER BY "이름" DESC
LIMIT 5;
--6
SELECT count(*)
FROM invoices
WHERE BillingPostalCode NOTNULL;
--17
SELECT name
FROM genres
WHERE GenreId = (
SELECT count(*)
FROM tracks
GROUP BY GenreId
ORDER BY count(*)
LIMIT 1);
