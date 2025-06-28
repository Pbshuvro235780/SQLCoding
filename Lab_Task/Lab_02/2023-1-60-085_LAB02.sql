create table account
(
    account_no char(5),
    balance number not null,
    constraint acct_no_pk primary key(account_no),
    constraint chk_bal check (balance>0)
);


create table customer
(
    customer_no char(5),
    customer_name varchar2(20) not null, 
    customer_city varchar2(10),
    constraint cus_no_pk primary key(customer_no)
);


create table depositor
(
    account_no char(5), 
    customer_no char(5),
    constraint d_pk primary key(account_no,customer_no)
);

alter table customer 
add date_of_birth date;

alter table customer
drop column date_of_birth;

alter table depositor 
rename column account_no to a_no;

alter table depositor
rename column customer_no to c_no; 

select * from depositor; 

alter table depositor 
add constraint depositor_fk1 
foreign key(a_no) references account(account_no);

alter table depositor 
add constraint depositor_fk2 
foreign key(c_no) references customer(customer_no);

insert into account values('A-101', 12000);
insert into account values('A-102', 6000);
insert into account values('A-103', 2500);

insert into customer values('C-101', 'Alice', 'Dhaka');
insert into customer values('C-102', 'Annie', 'Dhaka');
insert into customer values('C-103', 'Bob', 'Chittagong');
insert into customer values('C-104', 'Charlie', 'Khulna');

insert into depositor values('A-101','C-101');
insert into depositor values('A-103','C-102');
insert into depositor values('A-103','C-104');
insert into depositor values('A-102','C-103');

select customer_name, customer_city 
from customer;

select distinct customer_city 
from customer; 

select account_no, balance
from account
where balance > 7000;

select customer_no, customer_name, customer_city
from customer
where not(customer_city = 'Dhaka');

select customer_name, customer_city, balance
from customer  
join depositor on customer_no = c_no 
join account on account_no = a_no
where balance > 7000;

select customer_name, customer_city, balance
from customer  
join depositor on customer_no = c_no 
join account on account_no = a_no
where balance > 7000 and not(customer_city = 'Khulna');

select account_no, balance, customer_no
from account
join depositor on account_no = a_no 
join customer on customer_no = c_no 
where c_no = 'C-102';

select account_no, balance, customer_name
from account 
join depositor on account_no = a_no 
join customer on customer_no = c_no
where customer_city in ('Dhaka', 'Khulna');

select customer_no, customer_name, customer_city
from customer
where customer_no not in (select c_no from depositor);






