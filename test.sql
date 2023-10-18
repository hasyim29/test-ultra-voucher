create database test_ultra;
use test_ultra;

create table mt_parent (
	id int primary key,
	name varchar(100) not null
);

create table mt_child (
	id int primary key,
	name varchar(100) not null,
	parent_id int,
	foreign key (parent_id) references mt_parent(id)
);

insert into mt_parent
values (2, "Ilham"),
		(3, "Irwan");
	
insert into mt_child
values (1, "Zaki", 2),
		(2, "Ilham", null),
		(3, "Irwan", 2),
		(4, "Arka", 3);
	
select * from mt_child mc ;
select * from mt_parent mp ;