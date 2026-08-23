-- Q1. Total revenue

select round(sum(od.quantity * p.price),2) as revenue 
from orders_details od join pizzas p on od.pizza_id = p.pizza_id;



-- Q2. Average Order Value

select round(sum(od.quantity*p.price) / count(distinct od.order_id),2) as AverageOrderValue
from orders_details od join pizzas p on od.pizza_id = p.pizza_id;



-- Q3. Total Pizzas Sold

select sum(quantity) as Total_Pizza_Sold from orders_details;



-- Q4. Total Orders

select count(order_id) as Total_orders from orders;



-- Q5. Average pizzas sold per order

select round(sum(quantity) / count(distinct order_id),2) as PizzaSold
from orders_details;



-- CHART REQUIREMENTS
-- Q6. Daily trend for total orders 

select dayname(order_date) as OrderDay, count(order_id) as TotalOrders
from orders group by OrderDay;



-- Q7. Monthly Trend for Total Orders

select monthname(order_date) as OrderMonth, count(order_id) as TotalOrders 
from orders group by OrderMonth;



-- Q8. Percentage of Sales by Pizza Category

select pt.Category, round(sum(od.quantity * p.price),2) as TotalSales,
round(sum(od.quantity * p.price) / (select sum(od.quantity*p.price)
from orders_details od join pizzas p on od.pizza_id=p.pizza_id) * 100, 2) as PercentContrbtn
from orders_details od join pizzas p on od.pizza_id=p.pizza_id
join pizza_types pt on pt.pizza_type_id=p.pizza_type_id
group by pt.category;



-- Q9. Percentage of Sales by Pizza Size

select p.size, round(sum(od.quantity * p.price),2) as TotalSales,
round(sum(od.quantity * p.price) / (select sum(od.quantity*p.price)
from orders_details od join pizzas p on od.pizza_id=p.pizza_id) * 100, 2) as PercentContrbtn
from orders_details od join pizzas p on od.pizza_id=p.pizza_id
join pizza_types pt on pt.pizza_type_id=p.pizza_type_id
group by p.size;




-- Q10. Total Pizzas Sold by Pizza Category 

select pt.category, round(sum(od.quantity * p.price),2) as TotalPizzaSold
from orders_details od join pizzas p on od.pizza_id=p.pizza_id
join pizza_types pt on pt.pizza_type_id=p.pizza_type_id
group by pt.category;



-- Q11. Top 5 Best Sellers by Revenue, Total Quantity and Total Orders

-- Based on revenue
select pt.name, sum(od.quantity * p.price) as Revenue
from orders_details od join pizzas p on od.pizza_id=p.pizza_id
join pizza_types pt on pt.pizza_type_id=p.pizza_type_id
group by pt.name order by revenue desc limit 5;

-- Based on quantity
select pt.name, sum(od.quantity) as TotalQuantity 
from orders_details od join pizzas p on od.pizza_id=p.pizza_id
join pizza_types pt on pt.pizza_type_id=p.pizza_type_id
group by pt.name order by TotalQuantity desc limit 5;

-- Based on TotalOrders
select pt.name, count(distinct order_id) as TotalOrders
from orders_details od join pizzas p on od.pizza_id=p.pizza_id
join pizza_types pt on pt.pizza_type_id=p.pizza_type_id
group by pt.name order by TotalOrders desc limit 5;



-- Q12. Bottom 5 Best Sellers by Revenue, Total Quantity and Total Orders

-- Based on revenue
select pt.name, sum(od.quantity * p.price) as Revenue
from orders_details od join pizzas p on od.pizza_id=p.pizza_id
join pizza_types pt on pt.pizza_type_id=p.pizza_type_id
group by pt.name order by revenue limit 5;

-- Based on quantity
select pt.name, sum(od.quantity) as TotalQuantity 
from orders_details od join pizzas p on od.pizza_id=p.pizza_id
join pizza_types pt on pt.pizza_type_id=p.pizza_type_id
group by pt.name order by TotalQuantity limit 5;

-- Based on TotalOrders
select pt.name, count(distinct order_id) as TotalOrders
from orders_details od join pizzas p on od.pizza_id=p.pizza_id
join pizza_types pt on pt.pizza_type_id=p.pizza_type_id
group by pt.name order by TotalOrders limit 5;