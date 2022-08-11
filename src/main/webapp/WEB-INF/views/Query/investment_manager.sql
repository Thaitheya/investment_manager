CREATE TABLE  shares_purchases(
adhaar_number number(20),
purchase_id  NUMBER(6) ,
date_of_txn date not null,
stock_id number(6),
buy_price float(10),
quantity number(5),
amount_of_inr number(10),
mode_of_payment  VARCHAR2(30),

foreign key (adhaar_number) references user_registration(adhaar_number),
FOREIGN KEY (stock_id)REFERENCES stock_product(stock_id)
);
drop table shares_Purchases;
--------------------------------------------------

CREATE TABLE shares_sales(
adhaar_number number(20),
sales_id number(5),
date_of_txn date,
stock_id number(6),
sold_price float(10),
quantity  number(5),
amount_of_inr NUMBER(7),
foreign key (adhaar_number) references user_registration(adhaar_number),
foreign key(stock_id) REFERENCES stock_product(stock_id)
);
drop table shares_sales;
--------------------------------------------------------
CREATE TABLE user_registration (
first_name varchar2(50),
last_name varchar2(50),
user_name varchar2(50),
password varchar2(30),
adhaar_number number(20),
pan_number number(20),
address varchar2(50),
phone_number number(10),
primary key (adhaar_number)
);
drop table user_registration;
---------------------------------------------------------
CREATE TABLE customer_account(
customer_id number(10),
adhaar_number number(20),
deposited_amount  float(10),
shares_purchased number(20),
shares_sold number(20),
amount_under_settlement number(20),
primary key (customer_id),
foreign key (adhaar_number) references user_registration(adhaar_number)
);
drop table customer_account;
-----------------------------------------------------------
CREATE TABLE transactions (
transaction_id number(30),
transaction_date date,
adhaar_number number(20),
description  varchar2(100),
amount_received  number(20),
amount_paid number(20),
foreign key (adhaar_number) references user_registration(adhaar_number),
foreign key(customer_id) references customer_account(customer_id)
);
drop table transactions;
--------------------------------------------------------
CREATE TABLE stock_product (
adhaar_number number(20),
stock_id number(6),
stock_name varchar2(40),
company varchar2(60),
no_of_shares_in_hand  number(10) ,
face_value number(10),
last_tansactioned_date date ,
last_tansactioned_value FLOAT(7),
PRIMARY KEY (stock_id));
drop table stock_product;
insert into stock_product values(954306641309,123,'tata','TATA',1000,25,'25-jul-2019',257);
select * from stock_product;
-----------------------------------------------------------