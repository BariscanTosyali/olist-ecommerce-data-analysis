-- 3. En Değerli 10 Ürün 
SELECT
    oi.product_id,
    COUNT(*) AS total_sales,
    ROUND(AVG(oi.price), 2) AS avg_price,
    ROUND(SUM(oi.price), 2) AS total_revenue
FROM Olist.v_delivered_orders o
JOIN `Olist.olist_order_items_dataset` oi ON o.order_id = oi.order_id
GROUP BY oi.product_id
ORDER BY total_revenue DESC
LIMIT 10;
