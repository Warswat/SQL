select name, duration
from song
where duration = (select max(duration) from song);

select name
from song
where duration >= '00:03:30';

select name
from collections
where release_date between '2018-01-01' and '2021-01-01';

select name 
from author
where name not like '% %';

select name 
from song
where name like '%my%' or name like '%My%' or name like '%Мой%' or name like '%мой%';

select name, count(name)
from genre 
left join author_genre on genre.id = author_genre.genre_id
group by name

select count(*) 
from song 
left join album on song.album_id = album.id
where album.release_date between '2019-01-01' and '2021-01-01';

select album.name, avg(song.duration)
from song 
left join album on song.album_id = album.id
group by album.name;

select author.name, album_author.album_id, album.release_date 
from author 
left join album_author on author.id = album_author.author_id
left join album on album_author.album_id = album.id
where release_date not between '2020-01-01' and '2021-01-01';

select distinct collections.name , author.name
from collections
left join collections_song on collections.id = collections_song.collections_id
left join song on collections_song.song_id = song.id
left join album_author on song.album_id = album_author.album_id
left join author on album_author.author_id = author.id
where author.name = 'Eminem';

select album.name, count(author_genre.genre_id)
from album
left join album_author on album.id = album_author.album_id
left join author_genre on album_author.author_id = author_genre.author_id
group by album.name
having count(author_genre.genre_id) > 1;

insert into song(name,duration,album_id)
values ('Знаешь ли ты','00:04:02',1);

select song.name
from song 
left join collections_song on song.id = collections_song.song_id
where collections_song.collections_id is NULL;

select author.name
from song
left join album_author on song.album_id = album_author.album_id
left join author on  album_author.author_id = author.id 
where song.duration = (select min(song.duration) from song)

--сам не знаю что сотворил, это ужасно, надеюсь это можно сделать гораздо проще
select album.name, count(song.name)
from song
left join album on song.album_id = album.id
group by album.name
having count(song.name) = 
(select min(s.c) from
(select album.name as a, count(song.name) as c
from song
left join album on song.album_id = album.id
group by album.name) as s)





