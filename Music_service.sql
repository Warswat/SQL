create table Collections (
	id serial primary key,
	name varchar(60) not null,
	release_date date not null
);

create table Album(
	id serial primary key,
	name varchar(60) not null,
	release_date date not null
);

create table Song (
	id serial primary key,
	name varchar(60) not null,
	duration time not null,
	album_id integer not null references Album(id)
);

create table Collections_song(
	collections_id integer references Collections(id),
	song_id integer references Song(id),
	constraint pk_cs primary key (collections_id,song_id)
);

create table Author(
	id serial primary key,
	name varchar(60) not null
);

create table Album_author(
	album_id integer references Album(id),
	author_id integer references Author(id),
	constraint pk_aa primary key (album_id,author_id)
);

create table Genre(
	id serial primary key,
	name varchar(60) not null
);

create table Author_genre(
	author_id integer references Author(id),
	genre_id integer references Genre(id),
	constraint pk_ag primary key (author_id,genre_id)
);

