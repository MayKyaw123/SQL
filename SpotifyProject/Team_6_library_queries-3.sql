USE dbsongs;
CREATE VIEW same_artist AS
SELECT Artist_name, Song_name, "Rank"
FROM Artist a
JOIN Songs s
ON a.Artist_id = S.Artist_id
WHERE Artist_name = 'Future';

/* Shows how many songs Future has in the top 20 list including the artist name,
song name, and song ranking*/

CREATE VIEW recent_release AS
SELECT Song_name, "Rank", Release_date
FROM Songs
WHERE Release_date > "2022-01-01";

/* Shows the top songs that were released in the current year */

CREATE VIEW Hip_hop AS
SELECT Song_name, Artist_name, Genres_name
FROM Artist a
JOIN Songs s
ON a.Artist_id = s.Artist_id
JOIN Genres g
ON s.Genres_id = g.Genres_id
WHERE Genres_name = 'Hip-Hop'
Group BY song_name;

/* All songs in the top 20 under the hip hop category */

CREATE VIEW singer_writer1 AS
SELECT Artist_name
FROM Artist
WHERE Artist_id IN
(SELECT Artist_id
FROM Songs
WHERE Artist_id = '1');

/* Shows artist who wrote their own song */

CREATE VIEW multiple_producers AS
SELECT Song_name, Producer_name, Artist_name
FROM Artist a
JOIN Songs s
ON a.Artist_id = s.Artist_id
JOIN Producer p
ON s.Producer_id = p.Producer_id
WHERE Producer_name = 'TM88'
GROUP BY song_name;

/* Shows how many songs producer TM88 worked on for the top 20 list */

CREATE VIEW TM88_top_songs AS
SELECT Count(Song_name) AS "Number of Songs", producer_name
FROM songs
JOIN producer
USING (Producer_id)
WHERE Producer_name = 'TM88' AND Songs.Rank <= 20;
CREATE VIEW jbsongs AS
SELECT Artist_name, MAX(songs.Rank) AS "Highest ranking", Song_name, Release_date
FROM artist
JOIN songs
USING (Artist_id)
WHERE Artist_name = "Justin Bieber";
