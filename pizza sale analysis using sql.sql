-- Determine the top 3 most ordered pizza types based on revenue


select pizza_types.name as pizza, 
round(sum(order_details.quantity * pizzas.price),2)as revenue
from pizza_types join pizzas
on pizza_types.pizza_type_id=pizzas.pizza_type_id
join order_details
on order_details.pizza_id=pizzas.pizza_id
group by pizza 
order by revenue
desc limit 3

;

