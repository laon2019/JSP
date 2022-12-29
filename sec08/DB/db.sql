select * from member;

drop table product;

create table product(
	code int(5) primary key Auto_increment, 
	name varchar(100),
	price int(8),
	pictureurl varchar(50),
	description varchar(1000)
);

insert into product values (null, "상품1", 25000, "url", "상품설명");

select * from product;