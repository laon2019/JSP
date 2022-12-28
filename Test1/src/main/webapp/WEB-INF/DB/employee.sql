
create table employees(
	id varchar(10) not null primary key,
	pass varchar(10) not null,
	name varchar(24),
	lev char(1) default 'A',
	enter datetime default current_timestamp on update current_timestamp,
	gender char(1) default '1',
	phone varchar(30)
);
