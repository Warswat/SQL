insert into author(name)
values ('MakSim'),
		('Eminem'),
		('DJ Smash'),
		('Marshmallow');

insert into genre(name)
values ('Electronic '),
		('Pop'),
		('Rap');

insert into album(name,release_date)
values ('Трудный возраст','2006-03-28'),
		('Joytime','2016-01-08'),
		('IDDQD','2008-11-17'),
		('The Marshall Mathers LP','2000-05-23');

insert into song(name,duration,album_id)
values ('Stan','00:06:44',4),
		('Отпускаю','00:04:21',1),
		('Ветром стать','00:03:12',1),
		('Summer','00:03:54',2),
		('Moscow Never Sleeps','00:03:54',3),
		('The Real Slim Shady','00:04:32',4);

insert into collections(name,release_date)
values ('Зарубежные хиты всех времён','2019-10-23'),
		('Сельская дискотека','2016-03-24'),
		('Rap god','2004-02-12'),
		('DJ compilation','2020-11-11');

insert into author_genre
values (1,2),(2,3),(3,1),(4,1),(4,2);

insert into album_author 
values (1,1),(2,4),(3,3),(4,2);

insert into collections_song 
values (1,1),(1,6),(1,4),(2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(3,1),(3,6),(4,4),(4,5);