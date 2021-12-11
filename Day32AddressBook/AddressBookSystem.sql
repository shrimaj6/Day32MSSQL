


create database AddressBookService --UC1 Ability to create a Address Book Service DataBase


--UC2 Ability to create a Address Book Table with first and last name, address, city, state, zipcode, phone number and email as its attributes
create table AddressBook(

Id int identity(1,1),

first_name varchar(255),
last_name varchar(255),
Address varchar(255),
City varchar(50),
State varchar(50),
ZipCode int,
Phone_No bigint,
Email_Id varchar(255)
)

select * from AddressBook

--UC3 Insert contacts in table

insert into AddressBook(first_name, last_name,Address,City,State,Zipcode,Phone_No,Email_Id)
values('sam','das','34 kkk','new delhi','delhi',390002,7798758555,'sam1@gmail.com')

insert into AddressBook(first_name, last_name,Address,City,State,Zipcode,Phone_No,Email_Id)
values('shrimaj','mehta','27 south hope st','mumbai','maharashtra',400083,7798548555,'shri1@gmail.com')

--UC4 Edit existing contact using name
update AddressBook 
set first_name='ajay'
where  Phone_No = 7798548555 


--UC5 Delete person using first name
delete AddressBook 
where first_name = 'ajay'


--UC6 Ability to retrieve person belonging to a city or state 
select * from AddressBook where City='Delhi';





insert into AddressBook(first_name, last_name,Address,City,State,Zipcode,Phone_No,Email_Id)
values('sumit','rawat','321 south hope st','jaipur','rj',40021,7798545515,'sumit1@gmail.com')

insert into AddressBook(first_name, last_name,Address,City,State,Zipcode,Phone_No,Email_Id)
values('aaryan','shekar','121 north hope st','saket','new delhi',558855,8888888888,'aryan1@gmail.com')

insert into AddressBook(first_name, last_name,Address,City,State,Zipcode,Phone_No,Email_Id)
values('nazeela','k','125 south hope st','karol bhag','new delhi',99855,7798148855,'nazeela1@gmail.com')

insert into AddressBook(first_name, last_name,Address,City,State,Zipcode,Phone_No,Email_Id)
values('deepesh','c','785 east hope st','mumbai','maharashtra',402553,7798544551,'dip1@gmail.com')


--select count(city) from AddressBook 

--select count(state) from AddressBook

--UC7 Count size of addressbook by city and state

SELECT COUNT(city)
FROM AddressBook

SELECT COUNT(state)
FROM AddressBook

--UC8 Ability to retrieve entries sorted  alphabetically by person's name for a given city
select * from Address_Books where State='Maharashtra' order by (first_name);
select * from Address_Books;

select first_name from AddressBook ORDER BY first_name ASC

--UC9 Altering Address Book to add new columns, Address Book Name and Type of contacts

alter table AddressBook add name varchar(50)

select * from AddressBook

UPDATE [AddressBook] SET name = 'friend'  WHERE first_name = 'sam';

UPDATE [AddressBook] SET name = 'friend'  WHERE first_name = 'shrimaj';

UPDATE [AddressBook] SET name = 'family'  WHERE first_name = 'sumit';

UPDATE [AddressBook] SET name = 'relative'  WHERE first_name = 'aaryan';

UPDATE [AddressBook] SET name = 'Taiji'  WHERE first_name = 'nazeela';

UPDATE [AddressBook] SET name = 'Grandfather'  WHERE first_name = 'deepesh';

SELECT COUNT(Phone_No)
FROM AddressBook

ALTER TABLE AddressBook
DROP COLUMN name;

--UC11 Ability to add person to both Friend and Family

alter table AddressBook add name varchar(50)

alter table AddressBook add type varchar(50)

UPDATE [AddressBook] SET name = 'jeet'  WHERE first_name = 'deepesh';

UPDATE [AddressBook] SET type = 'relative'  WHERE first_name = 'deepesh';

select * from AddressBook

--UC10 Getting number of contact persons for each ContactType
select addressBookType, count(addressBookType) as NumberOfContacts from Address_Books group by addressBookType;
