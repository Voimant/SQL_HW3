-- 1 Название и год выхода альбомов, вышедших в 2018 году.
SELECT album_title, year_of_release FROM album
WHERE year_of_release = 2018;


-- 2 Название и продолжительность самого длительного трека.

SELECT track_title, duration FROM tracks
WHERE duration = (SELECT max(duration) FROM tracks);

-- 3 Название треков, продолжительность которых не менее 3,5 минут.

SELECT track_title, duration FROM tracks
WHERE duration >= 210;

-- 4 Названия сборников, вышедших в период с 2018 по 2020 год включительно.

SELECT title FROM collection
WHERE year_of_release BETWEEN 2018 AND 2020;

--5 исполнители, чье имя состоит из 1 слова:

SELECT nickname FROM executor
WHERE nickname NOT LIKE '% %';

--6 название треков, которые содержат слово «мой» или «my»:

SELECT track_title FROM tracks
WHERE track_title ILIKE '%my%' OR track_title ILIKE  '%мой%';