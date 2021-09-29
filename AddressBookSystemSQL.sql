 
#UC1 - Creating Database
CREATE DATABASE AddressBookService;
show databases;
use AddressBookService;

#UC2 - Creating Address Book Table
create table AddressBookService
(
firstname  varchar(30) not null primary key,
lastname  varchar(30) not null,
address  varchar(50) not null,
city  varchar(20) not null,
state  varchar(25) not null,
zip int not null ,
phone varchar(25) not null,
email  varchar(25) not null 
);
desc AddressBookService;

#UC3 - Ability to insert new contacts in Address Book Table
insert into AddressBookService(firstname,lastname,address,city,state,zip,phone,email)
values('Monali','Jumde','Lokseva nagar','Nagpur','MH',4231,'9400337457','mona@gmail.com');
 
insert into AddressBookService(firstname,lastname,address,city,state,zip,phone,email)
values('Sonali','Shende','Pratap Nagar','kolhapur','MH',40112,'998745621','sona@gmail.com');

insert into AddressBookService(firstname,lastname,address,city,state,zip,phone,email)
values('trupti','Lohe','Pratap Nagar','Nagpur','MH',43215,'9988774455','trupti@gmail.com');

insert into AddressBookService(firstname,lastname,address,city,state,zip,phone,email)
values('Neha','kolhe','Shyam nagar','pune','MH',4321,'987456321','neha@gmail.com');

select * from AddressBookService;

#UC4 - Ability to edit existing contact based on name
update AddressBookService set city='Kolhapur' where firstname='Monali';

#UC5 - Ability to delete contact based on name
delete from AddressBookService where firstname='Neha';

#UC6 - Ability to retrive contact belonging to city or state
select * from AddressBookService where city='Nagpur' or state='MH';  

#UC7 - Ability to understand size by city and state
select count(*)from AddressBookService where city='Nagpur'; 
select count(*)from AddressBookService where state='MH'; 
select count(*)from AddressBookService where city='Nagpur' and state='MH'; 

#UC8 - Ability to entries sorted alphabetically by person's name
SELECT * FROM AddressBookService ORDER BY firstname ASC;

#UC9 - Ability to Alter Address Book to add name and type
alter table AddressBookService add name varchar(30) not null ,add type varchar(30) not null;
update AddressBookService set name='Family', type='Friend' where firstname='Monali';
update AddressBookService set name='Friend', type='Family' where firstname='trupti';
update AddressBookService set name='College', type='Family' where firstname='sonali';

#UC10 - Ability to get number of contact persons
select count(type) from AddressBookService where type='Family';

