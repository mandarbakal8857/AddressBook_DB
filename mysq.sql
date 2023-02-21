create database EmployeePayrollService;
use EmployeePayrollService;
drop database EmployeePayrollService;

create table employee_payroll(
id int not null auto_increment,
name varchar(50) not null,
salary double not null,
start_date date not null,
primary key(id)
);


insert into employee_payroll (name, salary, start_date)
values("Mandar", 10000.65,"2022-12-10");

insert into employee_payroll (name, salary, start_date)
values("Tejas", 10000.65,"2022-12-10");

insert into employee_payroll (name, salary, start_date)
values("Nitin", 10000.65,"2022-12-10");

insert into employee_payroll (name, salary, start_date)
values("Sneha", 10000.65,"2022-12-19");

select * from employee_payroll;

alter table employee_payroll add gender char(1);


update employee_payroll set gender ='F' where id=4;

select gender, sum(salary) from employee_payroll group by gender;

create database AddressBookService;
use AddressBookService;

create table Address_Book(firstName varchar(50) not null,
lastName varchar(50) not null,
address varchar(50) not null,
city varchar(50) not null,
state varchar(50) not null,
zip int not null,
phoneNumber int not null,
email varchar(50) not null,
primary key(firstName));

desc Address_Book;

insert into Address_Book(firstName,lastName,address,city,state,zip,phoneNumber,email)
values('Mandar','Bakal','Pune','Pune','Maharashtra',412210,988146112,'abc@gmail.com');

insert into Address_Book(firstName,lastName,address,city,state,zip,phoneNumber,email)
values('Tejas','Bakal','Shikrapur','Pune','Maharashtra',412211,988146114,'xyz@gmail.com');

insert into Address_Book(firstName,lastName,address,city,state,zip,phoneNumber,email)
values('Sahil','Gadekar','Dadar','Mumbai','Maharashtra',412213,988146122,'sa@gmail.com');

select * from Address_Book;

update Address_Book set city='Nashik' where firstName='Mandar';

delete from Address_Book where firstName='Sahil';

select * from Address_Book where city='pune';

insert into Address_Book(firstName,lastName,address,city,state,zip,phoneNumber,email)
values('Sahil','Gadekar','Dadar','Mumbai','Maharashtra',412213,988146122,'sa@gmail.com');

insert into Address_Book(firstName,lastName,address,city,state,zip,phoneNumber,email)
values('Siddhant','Wakhare','pune','Nashik','Maharashtra',412219,988146101,'ab@gmail.com');

select city,count(firstName) from Address_Book group by city;

select firstName from Address_Book order by firstName asc;
 
