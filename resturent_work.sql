SELECT category,
COUNT(item_id) AS num_items,
SUM(price) AS total_spend
FROM order_details AS o
LEFT JOIN menu_items AS m
ON m.menu_item_id = o.item_id
GROUP BY category
ORDER BY total_spend DESC;