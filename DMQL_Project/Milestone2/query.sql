-- 1. Find all the questions, questiontypes in the Product survey with id=1
select q.question, q.type
from questions as q, survey as survey
where q.surveyid=survey.id and survey.title='Product Survey' and survey.id=1;

-- 2. Find list of all customers who have purchased products from Mumbai branch
select c.branch, c.name
from customer c
where c.branch = 'Mumbai branch';

-- 3. Find the number of customers in each branch
select count(name), branch
from customer
group by branch;

-- 4. Find all the responders for the product with name Coconut oil
select distinct product.name, customer.name
from responder re, product product, customer customer
where product.id=re.productid and customer.id=re.customerid and product.name='Coconut oil';

-- 5. Find all the question-answer/response pair for the product with name Rava Idly Mix
select distinct q.question, res.responsetext
from response res, responder re, questions as q
where res.questionid=q.id and re.productid=(select id 
											from product prod
											where prod.name='Rava Idly Mix');