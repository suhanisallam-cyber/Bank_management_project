create  database bank_management;

use bank_management;

create table customers (
    customer_id int primary key ,
    customer_name varchar(100),
    email varchar(100),
    phone varchar(15),
    city varchar(50)
);
rename table customers to customers_data;

create table accounts (
    account_id int primary key ,
    customer_id int,
    account_type varchar(30),
    balance decimal(12,2),
    opening_date date,
    foreign key  (customer_id) references customers(customer_id)
);
set foreign_key_checks = 0;
SET foreign_key_checks = 1;

create table transactions (
    transaction_id int primary key,
    account_id int,
    transaction_type varchar(20),
    amount decimal(12,2),
    transaction_date date,
    foreign key (account_id) references accounts(account_id)
);

create table loans (
    loan_id int primary key ,
    customer_id int,
    loan_type varchar(50),
    loan_amount decimal(12,2),
    interest_rate decimal(5,2),
    loan_status varchar(30),
    foreign key  (customer_id) references customers(customer_id)
);

create table  branches (
    branch_id int primary key ,
    branch_name varchar(100),
    city varchar(50),
    manager_name varchar(100)
);

insert into  customers_data
(customer_id, customer_name, email, phone, city)
values
(1, 'Rahul Sharma', 'rahul@gmail.com', '9876543210', 'Delhi'),
(2, 'Priya Verma', 'priya@gmail.com', '9876543211', 'Mumbai'),
(3, 'Aman Singh', 'aman@gmail.com', '9876543212', 'Bhopal'),
(4, 'Neha Gupta', 'neha@gmail.com', '9876543213', 'Indore'),
(5, 'Rohit Mehta', 'rohit@gmail.com', '9876543214', 'Delhi'),
(6, 'Anjali Jain', 'anjali@gmail.com', '9876543215', 'Pune'),
(7, 'Vikas Patel', 'vikas@gmail.com', '9876543216', 'Ahmedabad'),
(8, 'Sneha Kapoor', 'sneha@gmail.com', '9876543217', 'Mumbai'),
(9, 'Arjun Rao', 'arjun@gmail.com', '9876543218', 'Bangalore'),
(10, 'Kavita Joshi', 'kavita@gmail.com', '9876543219', 'Jaipur');


insert into  accounts
(account_id, customer_id, account_type, balance, opening_date)
values
(101, 1, 'Savings', 50000.00, '2024-01-15'),
(102, 2, 'Savings', 75000.00, '2024-02-20'),
(103, 3, 'Current', 120000.00, '2023-06-10'),
(104, 4, 'Savings', 45000.00, '2024-03-12'),
(105, 5, 'Current', 95000.00, '2023-11-05'),
(106, 6, 'Savings', 30000.00, '2024-04-18'),
(107, 7, 'Savings', 85000.00, '2023-09-25'),
(108, 8, 'Savings', 65000.00, '2024-05-22'),
(109, 9, 'Current', 150000.00, '2023-07-14'),
(110, 10, 'Savings', 40000.00, '2024-06-30'),
(111, 1, 'Current', 90000.00, '2025-01-10'),
(112, 5, 'Savings', 55000.00, '2025-02-15');

insert into  transactions
(transaction_id, account_id, transaction_type, amount, transaction_date)
values
(1001, 101, 'Deposit', 20000.00, '2025-01-05'),
(1002, 101, 'Withdrawal', 5000.00, '2025-01-10'),
(1003, 102, 'Deposit', 30000.00, '2025-01-12'),
(1004, 103, 'Withdrawal', 15000.00, '2025-01-15'),
(1005, 104, 'Deposit', 10000.00, '2025-01-18'),
(1006, 105, 'Deposit', 25000.00, '2025-01-20'),
(1007, 106, 'Withdrawal', 5000.00, '2025-01-22'),
(1008, 107, 'Deposit', 40000.00, '2025-01-25'),
(1009, 108, 'Withdrawal', 10000.00, '2025-01-28'),
(1010, 109, 'Deposit', 50000.00, '2025-02-02'),
(1011, 110, 'Deposit', 15000.00, '2025-02-05'),
(1012, 111, 'Withdrawal', 20000.00, '2025-02-08'),
(1013, 112, 'Deposit', 25000.00, '2025-02-10'),
(1014, 102, 'Withdrawal', 8000.00, '2025-02-15'),
(1015, 103, 'Deposit', 35000.00, '2025-02-18'),
(1016, 105, 'Withdrawal', 10000.00, '2025-02-20'),
(1017, 107, 'Deposit', 20000.00, '2025-02-25'),
(1018, 109, 'Withdrawal', 25000.00, '2025-03-01'),
(1019, 101, 'Deposit', 10000.00, '2025-03-05'),
(1020, 108, 'Deposit', 18000.00, '2025-03-10');

insert loans
(loan_id, customer_id, loan_type, loan_amount, interest_rate, loan_status)
values
(201, 1, 'Home Loan', 500000.00, 7.50, 'Approved'),
(202, 2, 'Personal Loan', 200000.00, 10.50, 'Approved'),
(203, 3, 'Business Loan', 800000.00, 8.25, 'Approved'),
(204, 4, 'Education Loan', 300000.00, 6.75, 'Pending'),
(205, 5, 'Car Loan', 450000.00, 8.50, 'Approved'),
(206, 6, 'Personal Loan', 150000.00, 11.00, 'Rejected'),
(207, 7, 'Home Loan', 600000.00, 7.25, 'Approved'),
(208, 8, 'Education Loan', 250000.00, 6.50, 'Pending'),
(209, 9, 'Business Loan', 1000000.00, 8.00, 'Approved'),
(210, 10, 'Car Loan', 350000.00, 9.00, 'Approved');


insert into  branches
(branch_id, branch_name, city, manager_name)
 values
(1, 'Main Branch', 'Delhi', 'Rajesh Kumar'),
(2, 'Andheri Branch', 'Mumbai', 'Suresh Patel'),
(3, 'MP Nagar Branch', 'Bhopal', 'Amit Verma'),
(4, 'Vijay Nagar Branch', 'Indore', 'Pankaj Sharma'),
(5, 'Kothrud Branch', 'Pune', 'Manoj Singh'),
(6, 'Satellite Branch', 'Ahmedabad', 'Rakesh Gupta');

select*from customers_data;
select*from accounts;
select*from transactions;
select*from loans;
select*from branches;

-- Bank Management System — SQL Questions
-- Basic Level

-- Q1. Display all customers.
select*from customers_data;

-- Q2. Display the customer name and city of all customers.
select customer_name,city
from customers_data;

-- Q3 Find all savings accounts.
select*
from accounts
where account_type='Saving';

-- Q4 Find all accounts with a balance greater than ₹50,000.
select*from accounts
where balance>50000;

-- Q5  Display all customers sorted by city.
select customer_id,customer_name, city from customers_data;

--  Intermediate Level

-- Q6. Display each account along with the customer's name, account type, and balance.
  select a.account_id,c.customer_name,a.account_type,a.balance
  from accounts a
  join customers_data c on c.customer_id=a.customer_id;
  
-- Q7. Find the total number of accounts held by each customer.
select c.customer_name, c.customer_id,count(a.account_id) as total_account
from accounts a
join customers_data c on c.customer_id=a.customer_id
group by customer_name, customer_id;
   
-- Q8. Find the total balance of all bank accounts.
SELECT SUM(balance) AS total_bank_balance
FROM accounts;

-- Q9.Find the average balance of all bank accounts.
SELECT avg(balance) AS average_bank_balance
FROM accounts;

-- Q10. Find the account with the highest balance.
select balance from accounts
order by balance desc
limit 1;
-- Q11.Find the total balance held by each customer.
select c.customer_name,sum(a.balance) as total_balance
from customers_data c
join accounts a on c.customer_id=a.customer_id
group by customer_name;

-- Q12.Find the total number of customers in each city.
select city,count(*) as total_city
 from customers_data
 group by city;
 
-- Q13.Find all approved loans.
select *from loans
where loan_status="Approved";

-- Q14.Find all loans with a loan amount greater than ₹500,000.
select *from loans
where loan_amount > 500000;

-- Q15.Find the total loan amount for each loan type.
 select loan_type,sum(loan_amount) as total_loan_amount
 from loans
 group by loan_type;
 
-- Advanced Level
-- Q16. Display the customer name along with their loan details.
select
    c.customer_name,
    l.loan_type,
    l.loan_amount,
    l.loan_status
from customers c
join loans l
on c.customer_id = l.customer_id;

-- Q17. Find the customer who has the highest loan amount.
 select c.customer_name,l.loan_amount
 from customers_data c
 join accounts a on c.customers_id=l.customer_id
 order by loan_amount desc
 limit 1;

-- Q18.Find the total deposit amount for each account.
select account_id,sum(amount) as total_deposit
from transactions
where transaction_type = 'Deposit'
group by account_id;

-- Q19. Find the total withdrawal amount for each account.
select account_id,sum(amount) as total_withdrawal
from transactions
where transaction_type = 'Withdrawal'
group by account_id;

-- Q20 Display the customer name along with their account and transaction details.
select c.customer_name,
a.account_id,
transaction_id,
t.transaction_type,
t.transaction_date
from customers_data c
join accounts a 
on c.customer_id=a.customer_id
join transactions t 
on a.account_id=t.account_id;

-- Q21 Find the total amount deposited in the bank.
select sum(amount) as total_deposite
from transactions
where transaction_type= 'deposite';

-- Q22 Find the total amount withdrawn from the bank.
select sum(amount) as total_withdrawals
from transactions
where transaction_type = 'Withdrawal';

-- Q23 Find all customers who have an approved loan.
select c.customer_name,l.loan_status,l.loan_amount
from customers_data c
join loans l on c.customer_id=l.customer_id
where loan_status='Approved';
-- Q24 Find customers whose total account balance is greater than ₹70,000.
select c.customer_name,c.customer_id,sum(a.balance) as total_balance
from customers_data c
join accounts a on c.customer_id=a.customer_id
group by customer_name,customer_id
having sum(a.balance) >70000;

-- Q25. Display each customer's total account balance and total loan amount.
select c.customer_name,
    coalesce(sum(distinct a.balance), 0) as total_balance,
    coalesce(sum(distinct l.loan_amount), 0) as total_loan
from customers_data  c
left join accounts a
on c.customer_id = a.customer_id
left join  loans l
on c.customer_id = l.customer_id
group by c.customer_id, c.customer_name;


