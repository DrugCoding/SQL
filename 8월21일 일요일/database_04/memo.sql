--1
.TABLE
--2
X
--3
--16
SELECT Name
FROM artists
WHERE ArtistId = (
SELECT count(*)
FROM albums
GROUP BY ArtistId
ORDER BY count(*) DESC
limit 5);
--17
SELECT Name
FROM genres
WHERE genreId = (
SELECT count(*)
FROM tracks
GROUP BY GenreId
ORDER BY count(*) ASC
LIMIT 1);