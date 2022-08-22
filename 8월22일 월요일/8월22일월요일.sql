--1
select * 
FROM playlist_track as 'A'
ORDER BY playlistId DESC
LIMIT 5;
--2. tracks 테이블에 `B`라는 별칭을 부여하고 데이터를 출력하세요
SELECT *
FROM tracks as 'B'
ORDER BY TrackId ASC
LIMIT 5;
--3
SELECT PlaylistId, Name
FROM playlist_track JOIN tracks
  ON playlist_track.TrackId = tracks.TrackId
order by PlaylistId DESC
LIMIT 10;
--4
SELECT P.PlaylistId, T.Name
FROM playlist_track P JOIN tracks T
  ON P.TrackId = T.TrackId
WHERE P.PlaylistId = 10
ORDER BY T.Name DESC
LIMIT 5;
--5
SELECT count(*)
FROM tracks T JOIN artists A
  ON T.Composer = A.name;
--6
SELECT count(*)
FROM tracks T LEFT JOIN artists A
  ON T.Composer = A.name;
--8
SELECT InvoiceLineId, InvoiceId
FROM invoice_items
ORDER BY InvoiceId ASC
LIMIT 5;
--9
SELECT InvoiceId, CustomerId
FROM invoices
ORDER BY InvoiceId ASC
LIMIT 5;
--10
SELECT A.InvoiceLineId, B.InvoiceId
FROM invoice_items A JOIN invoices B
  ON A.InvoiceId = B.InvoiceId
ORDER BY A.InvoiceId DESC
LIMIT 5;
--11
SELECT A.InvoiceId, B.CustomerId
FROM invoices A JOIN customers B
  ON A.CustomerId = B.CustomerId
ORDER BY A.InvoiceId DESC
LIMIT 5;
--12
SELECT A.InvoiceLineId, B.InvoiceId, C.CustomerId
FROM 
--13