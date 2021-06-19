Create Table Company(
	id int,
	name varchar(20),
	Primary key (id)
);

Create Table Product (
	id int,
	name varchar(20) not null,
	category varchar(20) not null,
	companyid  int,
	primary key (id),
	foreign key (companyid) references company(id) on delete cascade
);

Create Table Customer (
	id int,
	name varchar(20),
	age int not null,
	gender varchar(20) not null,
	branch varchar(20) not null,
	country varchar(20) not null,
	primary key (id)
);

Create Table Survey (
	id int,
	title varchar(100) not null,
	primary key (id)
);

Create Table Questions(
	id int,
	type varchar(50) not null,
	question varchar(500) not null,
	surveyid int,
	primary key(id),
	foreign key(surveyid) references Survey(id) on delete set null
);

Create Table Answer(
	id int,
	text varchar(1000),
	questionid int,
	primary key(id),
	foreign key(questionid) references Questions(id) on delete cascade
);

Create Table Responder(
	id int,
	customerid int, 
	productid int,
	surveyid int,
	primary key(id),
	foreign key (customerid) references Customer(id) on delete set null,
	foreign key (productid) references Product(id) on delete set null,
	foreign key (surveyid) references Survey(id) on delete set null
);

Create Table Response (
	id int,
	questionid int, 
	answerid int,
	responsetext varchar(1000),
	responderid int,
	primary key (id),
	foreign key (questionid) references Questions(id) on delete set null,
	foreign key (answerid) references Answer(id) on delete set null,
	foreign key (responderid) references Responder(id) on delete set null
);

INSERT INTO Company VALUES (1, 'Rubix');

INSERT INTO Product (id, name, category, companyid)
VALUES (1, 'Coconut oil', 'Grocery', 1);
INSERT INTO Product (id, name, category, companyid)
VALUES (2, 'Tomato Ketchup', 'Sauces', 1);
INSERT INTO Product (id, name, category, companyid)
VALUES (3, 'Maggi', 'Instant Food', 1);
INSERT INTO Product (id, name, category, companyid)
VALUES (4, 'Poha', 'Grocery', 1);
INSERT INTO Product (id, name, category, companyid)
VALUES (5, 'Corn Flakes', 'Instant Food', 1);
INSERT INTO Product (id, name, category, companyid)
VALUES (6, 'Bread-sticks', 'Milk Products', 1);
INSERT INTO Product (id, name, category, companyid)
VALUES (7, 'Paneer', 'Milk Products', 1);
INSERT INTO Product (id, name, category, companyid)
VALUES (8, 'pasta', 'Instant Food', 1);
INSERT INTO Product (id, name, category, companyid)
VALUES (9, 'Basmati Rice', 'Grocery', 1);
INSERT INTO Product (id, name, category, companyid)
VALUES (10, 'Choco Flakes', 'Instant Food', 1);
INSERT INTO Product (id, name, category, companyid)
VALUES (11, 'Chana Dal', 'Grocery', 1);
INSERT INTO Product (id, name, category, companyid)
VALUES (12, 'Wheat Atta', 'Food', 1);
INSERT INTO Product (id, name, category, companyid)
VALUES (13, 'Rava Idly Mix', 'Instant Food', 1);
INSERT INTO Product (id, name, category, companyid)
VALUES (14, 'Rubix Biscuits', 'Instant Food', 1);
INSERT INTO Product (id, name, category, companyid)
VALUES (15, 'Shampoo', 'Personal Care', 1);
INSERT INTO Product (id, name, category, companyid)
VALUES (16, 'Detergent Liquid', 'Cleaning', 1);
INSERT INTO Product (id, name, category, companyid)
VALUES (17, 'Sensitive toothpaste', 'Personal Care', 1);
INSERT INTO Product (id, name, category, companyid)
VALUES (18, 'Honey', 'Food', 1);
INSERT INTO Product (id, name, category, companyid)
VALUES (19, 'Peanuts', 'Grocery', 1);
INSERT INTO Product (id, name, category, companyid)
VALUES (20, 'Cheese', 'Milk Products', 1);

select * from product;

INSERT INTO Customer (id, name, age, gender, branch, country)
VALUES (1, 'Alex', 25, 'Male', 'Texas branch', 'United States');
INSERT INTO Customer (id, name, age, gender, branch, country)
VALUES (2, 'Raju', 32, 'Male', 'London branch', 'United Kingdom');
INSERT INTO Customer (id, name, age, gender, branch, country)
VALUES (3, 'Mary', 48, 'Female', 'Buffalo branch', 'United States');
INSERT INTO Customer (id, name, age, gender, branch, country)
VALUES (4, 'Romeo', 28, 'Male', 'Delhi branch', 'India');
INSERT INTO Customer (id, name, age, gender, branch, country)
VALUES (5, 'Sara', 29, 'Female', 'Mumbai branch', 'India');
INSERT INTO Customer (id, name, age, gender, branch, country)
VALUES (6, 'Alen', 35, 'Male', 'Texas branch', 'United States');
INSERT INTO Customer (id, name, age, gender, branch, country)
VALUES (7, 'Sandhu', 42, 'Male', 'London branch', 'United Kingdom');
INSERT INTO Customer (id, name, age, gender, branch, country)
VALUES (8, 'Mira', 58, 'Female', 'Buffalo branch', 'United States');
INSERT INTO Customer (id, name, age, gender, branch, country)
VALUES (9, 'Rambo', 38, 'Male', 'Delhi branch', 'India');
INSERT INTO Customer (id, name, age, gender, branch, country)
VALUES (10, 'Sirah', 39, 'Female', 'Mumbai branch', 'India');
INSERT INTO Customer (id, name, age, gender, branch, country)
VALUES (11, 'Alice', 27, 'Male', 'Texas branch', 'United States');
INSERT INTO Customer (id, name, age, gender, branch, country)
VALUES (12, 'Saro', 35, 'Male', 'London branch', 'United Kingdom');
INSERT INTO Customer (id, name, age, gender, branch, country)
VALUES (13, 'Cary', 49, 'Female', 'Buffalo branch', 'United States');
INSERT INTO Customer (id, name, age, gender, branch, country)
VALUES (14, 'Roni', 24, 'Male', 'Delhi branch', 'India');
INSERT INTO Customer (id, name, age, gender, branch, country)
VALUES (15, 'Seema', 28, 'Female', 'Mumbai branch', 'India');
INSERT INTO Customer (id, name, age, gender, branch, country)
VALUES (16, 'James', 45, 'Male', 'Texas branch', 'United States');
INSERT INTO Customer (id, name, age, gender, branch, country)
VALUES (17, 'Sanga', 37, 'Male', 'London branch', 'United Kingdom');
INSERT INTO Customer (id, name, age, gender, branch, country)
VALUES (18, 'Judy', 32, 'Female', 'Buffalo branch', 'United States');
INSERT INTO Customer (id, name, age, gender, branch, country)
VALUES (19, 'Henry', 26, 'Male', 'Delhi branch', 'India');
INSERT INTO Customer (id, name, age, gender, branch, country)
VALUES (20, 'Sama', 39, 'Female', 'Mumbai branch', 'India');

select * from customer;

alter table customer alter column country type varchar(20);

INSERT INTO Survey (id, title)
VALUES (1, 'Product Survey');
INSERT INTO Survey (id, title)
VALUES (2, 'Company Survey');
INSERT INTO Survey (id, title)
VALUES (3, 'Branch Survey');
INSERT INTO Survey (id, title)
VALUES (4, 'Product Survey');
INSERT INTO Survey (id, title)
VALUES (5, 'Company Survey');
INSERT INTO Survey (id, title)
VALUES (6, 'Branch Survey');
INSERT INTO Survey (id, title)
VALUES (7, 'Product Survey');
INSERT INTO Survey (id, title)
VALUES (8, 'Company Survey');
INSERT INTO Survey (id, title)
VALUES (9, 'Branch Survey');

select * from survey;

INSERT INTO Questions (id, type, question, surveyid)
VALUES (1, 'objective_single_choice', 'How do you think is the price of the Product?', 1);
INSERT INTO Questions (id, type, question, surveyid)
VALUES (2, 'objective_single_choice', 'How is the quality of the Product?', 1);
INSERT INTO Questions (id, type, question, surveyid)
VALUES (3, 'objective_single_choice', 'How is the packaging of the Product?', 1);
INSERT INTO Questions (id, type, question, surveyid)
VALUES (4, 'objective_single_choice', 'How often do you use the product?', 1);
INSERT INTO Questions (id, type, question, surveyid)
VALUES (5, 'objective_single_choice', 'How do you rate the value for money of the product?', 1);
INSERT INTO Questions (id, type, question, surveyid)
VALUES (6, 'objective_single_choice', 'How long have you been using this product?', 1);
INSERT INTO Questions (id, type, question, surveyid)
VALUES (7, 'objective_single_choice', 'Will you purchase the product again?', 1);
INSERT INTO Questions (id, type, question, surveyid)
VALUES (8, 'objective_multiple_choice', 'Features of the product that needs improvment?', 1);
INSERT INTO Questions (id, type, question, surveyid)
VALUES (9, 'subjective', 'What is the main benefit you receive from this product?', 1);
INSERT INTO Questions (id, type, question, surveyid)
VALUES (10, 'subjective', 'What are the top 3 benefits you receive from this product?', 1);
INSERT INTO Questions (id, type, question, surveyid)
VALUES (11, 'objective_single_choice', 'How many products of Rubix do you use?', 2);
INSERT INTO Questions (id, type, question, surveyid)
VALUES (12, 'objective_single_choice', 'Since how long have you been using Rubix products?', 2);
INSERT INTO Questions (id, type, question, surveyid)
VALUES (13, 'subjective', 'What are the main qualities of Rubix products that you like?', 2);
INSERT INTO Questions (id, type, question, surveyid)
VALUES (14, 'subjective', 'What are the main qualities of Rubix products that you dont like?', 2);
INSERT INTO Questions (id, type, question, surveyid)
VALUES (15, 'objective_single_choice', 'Do you recommend Rubix Products to others?', 2);
INSERT INTO Questions (id, type, question, surveyid)
VALUES (16, 'objective_multiple_choice', 'What alternative brands would you choose when Rubix products are not available?', 2);
INSERT INTO Questions (id, type, question, surveyid)
VALUES (17, 'objective_single_choice', 'Was the branch you visited nearby to your home?', 3);
INSERT INTO Questions (id, type, question, surveyid)
VALUES (18, 'objective_single_choice', 'What is the distance of the branch you visited from your home?', 3);
INSERT INTO Questions (id, type, question, surveyid)
VALUES (19, 'objective_single_choice', 'How was the customer service at the branch you visited?', 3);
INSERT INTO Questions (id, type, question, surveyid)
VALUES (20, 'subjective', 'What recommendations do you offer to improve our products or service', 3);

select * from questions;

INSERT INTO Answer (id, text, questionid)
VALUES (1,'Low, Medium, High', 1);
INSERT INTO Answer (id, text, questionid)
VALUES (2, 'Low, Medium, High', 2);
INSERT INTO Answer (id, text, questionid)
VALUES (3, 'Low, Medium, High', 3);
INSERT INTO Answer (id, text, questionid)
VALUES (4, '1 month, 3 months, 6 months, I do not use it', 4);
INSERT INTO Answer (id, text, questionid)
VALUES (5, '1 star, 2 stars, 3 stars, 4 stars, 5 stars', 5);
INSERT INTO Answer (id, text, questionid)
VALUES (6, '1 month, 3 months, 6 months, 12 months, More than 12 months', 6);
INSERT INTO Answer (id, text, questionid)
VALUES (7, 'Never, Probably, Sure, Not Sure', 7);
INSERT INTO Answer (id, text, questionid)
VALUES (8, 'Packaging, Taste, Freebies, Ingredients, Availability',8);
INSERT INTO Answer (id, text, questionid)
VALUES (9, '',9);
INSERT INTO Answer (id, text, questionid)
VALUES (10, '',10);
INSERT INTO Answer (id, text, questionid)
VALUES (11, 'One, One to Five, More than Five',11);
INSERT INTO Answer (id, text, questionid)
VALUES (12, '1 month, 3 months, 6 months, 1 year, More than 1 year',12);
INSERT INTO Answer (id, text, questionid)
VALUES (13, '',13);
INSERT INTO Answer (id, text, questionid)
VALUES (14, '',14);
INSERT INTO Answer (id, text, questionid)
VALUES (15, 'Yes, No',15);
INSERT INTO Answer (id, text, questionid)
VALUES (16, 'Chubix, Zento, Zest',16);
INSERT INTO Answer (id, text, questionid)
VALUES (17, 'Yes, No',17);
INSERT INTO Answer (id, text, questionid)
VALUES (18, 'less than 1 mile, between 1 to 5 miles, more than 5 miles', 18);
INSERT INTO Answer (id, text, questionid)
VALUES (19, 'Not good, Good, Excellent', 19);
INSERT INTO Answer (id, text, questionid)
VALUES (20, '',20);

select * from answer;

INSERT INTO Responder (id, customerid, productid, surveyid)
VALUES (1, 1, 1, 1);
INSERT INTO Responder (id, customerid, productid, surveyid)
VALUES (2, 1, 1, 2);
INSERT INTO Responder (id, customerid, productid, surveyid)
VALUES (3, 1, 1, 3);
INSERT INTO Responder (id, customerid, productid, surveyid)
VALUES (4, 2, 1, 1);
INSERT INTO Responder (id, customerid, productid, surveyid)
VALUES (5, 2, 2, 1);
INSERT INTO Responder (id, customerid, productid, surveyid)
VALUES (6, 2, 4, 1);
INSERT INTO Responder (id, customerid, productid, surveyid)
VALUES (7, 2, 11, 1);
INSERT INTO Responder (id, customerid, productid, surveyid)
VALUES (8, 2, 11, 2);
INSERT INTO Responder (id, customerid, productid, surveyid)
VALUES (9, 2, 11, 3);
INSERT INTO Responder (id, customerid, productid, surveyid)
VALUES (10, 5, 3, 1);
INSERT INTO Responder (id, customerid, productid, surveyid)
VALUES (11, 5, 4, 1);
INSERT INTO Responder (id, customerid, productid, surveyid)
VALUES (12, 5, 4, 2);
INSERT INTO Responder (id, customerid, productid, surveyid)
VALUES (13, 5, 4, 3);
INSERT INTO Responder (id, customerid, productid, surveyid)
VALUES (14, 7, 12, 1);
INSERT INTO Responder (id, customerid, productid, surveyid)
VALUES (15, 7, 13, 1);
INSERT INTO Responder (id, customerid, productid, surveyid)
VALUES (16, 7, 13, 2);
INSERT INTO Responder (id, customerid, productid, surveyid)
VALUES (17, 7, 13, 3);
INSERT INTO Responder (id, customerid, productid, surveyid)
VALUES (18, 20, 13, 1);
INSERT INTO Responder (id, customerid, productid, surveyid)
VALUES (19, 20, 13, 2);
INSERT INTO Responder (id, customerid, productid, surveyid)
VALUES (20, 20, 13, 3);

select * from responder;

INSERT INTO Response (id, questionid, answerid, responsetext, responderid)
VALUES (1, 1, 1, 'Medium', 1);
INSERT INTO Response (id, questionid, answerid, responsetext, responderid)
VALUES (2, 2, 2, 'High', 1);
INSERT INTO Response (id, questionid, answerid, responsetext, responderid)
VALUES (3, 3, 3, 'High', 1);
INSERT INTO Response (id, questionid, answerid, responsetext, responderid)
VALUES (4, 4, 4, '6 months', 1);
INSERT INTO Response (id, questionid, answerid, responsetext, responderid)
VALUES (5, 5, 5, '5 stars', 1);
INSERT INTO Response (id, questionid, answerid, responsetext, responderid)
VALUES (6, 6, 6, 'More than 12 months', 1);
INSERT INTO Response (id, questionid, answerid, responsetext, responderid)
VALUES (7, 7, 7, 'Sure', 1);
INSERT INTO Response (id, questionid, answerid, responsetext, responderid)
VALUES (8, 8, 8, 'Availability', 1);
INSERT INTO Response (id, questionid, answerid, responsetext, responderid)
VALUES (9, 9, 9, 'Oil is good for health', 1);
INSERT INTO Response (id, questionid, answerid, responsetext, responderid)
VALUES (10, 10, 10, 'Oil mixes with rice properly, good health, low cholestrol', 1);
INSERT INTO Response (id, questionid, answerid, responsetext, responderid)
VALUES (11, 11, 11, 'One to Five', 2);
INSERT INTO Response (id, questionid, answerid, responsetext, responderid)
VALUES (12, 12, 12, '1 year', 2);
INSERT INTO Response (id, questionid, answerid, responsetext, responderid)
VALUES (13, 14, 14, 'Unavailability of products at all times', 2);
INSERT INTO Response (id, questionid, answerid, responsetext, responderid)
VALUES (14, 13, 13, 'Good packaging and quality of products', 2);
INSERT INTO Response (id, questionid, answerid, responsetext, responderid)
VALUES (15, 15, 15, 'Yes', 2);
INSERT INTO Response (id, questionid, answerid, responsetext, responderid)
VALUES (16, 16, 16, 'Zento', 2);
INSERT INTO Response (id, questionid, answerid, responsetext, responderid)
VALUES (17, 18, 18, 'less than 1 mile', 3);
INSERT INTO Response (id, questionid, answerid, responsetext, responderid)
VALUES (18, 17, 17, 'Yes', 3);
INSERT INTO Response (id, questionid, answerid, responsetext, responderid)
VALUES (19, 19, 19, 'Excellent', 3);
INSERT INTO Response (id, questionid, answerid, responsetext, responderid)
VALUES (20, 20, 20, 'Increase the number of branches and availability of products in highly populated locations', 3);

alter table response alter responsetext type varchar(1000);

select * from response;




