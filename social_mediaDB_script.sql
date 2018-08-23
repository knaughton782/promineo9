
create database if not exists social_media;

use social_media;

drop table if exists comment;
drop table if exists post;
drop table if exists user;


create table user (
	id int (4) not null auto_increment,
  username varchar 	(25) not null,
  email varchar (100) not null,
  password varchar (8) not null,
  primary key (id )
);

create table post (
	id int(255) not null auto_increment,
	user_id int (4) not null,
	created datetime not null default current_timestamp,
	content varchar (255) not null,
	foreign key (user_id) references user (id),
	primary key (id)
);

create table comment 	(
	id int(255) not null auto_increment,
	user_id int (4) not null,
	post_id int (4) not null,
	created datetime not null default current_timestamp,
	content varchar (255) not null,
	foreign key (post_id) references post (id),
	foreign key (user_id) references user (id),
	primary key (id)
);