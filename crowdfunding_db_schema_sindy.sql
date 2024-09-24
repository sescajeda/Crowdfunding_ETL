CREATE TABLE category (
    category_id varchar(10) PRIMARY KEY NOT NULL ,
    category varchar(50)   NOT NULL
);

create table subcategory(
	subcategory_id varchar(20) not null,
	subcategory varchar(50) not null,
	primary key (subcategory_id)
);
create table contacts(
	contact_id int not null,
	first_name varchar(20) not null,
	last_name varchar(20) not null,
	email varchar(50) not null,
	primary key (contact_id)
);
create table campaign(
	cf_id int not null,
	contact_id int not null,
	company_name varchar(80) not null,
	description varchar(80) not null,
	goal float not null,
	pledged float not null,
	outcome varchar(50) not null,
	backers_count int not null,
	country varchar(50) not null,
	currency varchar(50) not null,
	launched_date date not null,
	end_date date not null,
	category varchar(50) not null,
	subcategory varchar(50) not null,
	category_id varchar(10) not null,
	subcategory_id varchar(20) not null,
	primary key (cf_id),
	foreign key (category_id) references category (category_id),
	foreign key (subcategory_id) references subcategory (subcategory_id),
	foreign key (contact_id) references contacts (contact_id)
);

select * 
from category

select * 
from subcategory 

select *  
from contacts

select * 
from campaign