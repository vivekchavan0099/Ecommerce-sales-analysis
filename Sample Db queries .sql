SELECT * FROM Ecommerce_Project.orders;
use Ecommerce_project;

select sum(Net_amount) as Total_sales from orders;

select 
product,sum(net_amount) as sales
from orders
group by product
order by sales desc;

-- Top Cities
select city,sum(net_amount) as sales
from orders
group by city
order by sales desc;

-- monthly sales
select month,sum(net_amount) as sales
from orders
group by month;

-- highest profit product 
select product, sum(profit) as profit
from orders
group by product
order by profit desc;

-- payment mode distribution
select payment_mode, count(*) as total_orders
from orders
group by payment_mode;

-- cancelled orders
select *
from orders
where order_status = 'cancelled';

-- 
SHOW GLOBAL VARIABLES LIKE 'port';
SHOW GLOBAL VARIABLES LIKE 'bind_address';

SHOW GLOBAL VARIABLES LIKE 'port';

