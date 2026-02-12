-- 4. Müşteri Bazında Değer Analizi (Top 20 müşteri örneği)
SELECT
    c.customer_unique_id,
    ROUND(SUM(oi.price + oi.freight_value), 2) AS total_order_value,
    COUNT(DISTINCT o.order_id) AS total_orders
FROM Olist.v_delivered_orders o
JOIN `Olist.olist_customers_dataset` c ON o.customer_id = c.customer_id
JOIN `Olist.olist_order_items_dataset` oi ON o.order_id = oi.order_id
GROUP BY c.customer_unique_id
ORDER BY total_order_value DESC
LIMIT 20;
