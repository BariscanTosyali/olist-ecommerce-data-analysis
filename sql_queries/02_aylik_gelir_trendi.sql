-- 2. Aylık Gelir ve Sipariş Trendi
SELECT
    EXTRACT(YEAR FROM o.order_purchase_timestamp) AS yil,
    EXTRACT(MONTH FROM o.order_purchase_timestamp) AS ay,
    COUNT(DISTINCT o.order_id) AS siparis_sayisi,
    ROUND(SUM(oi.price + oi.freight_value), 2) AS aylik_gelir,
    ROUND(AVG(oi.price + oi.freight_value), 2) AS ortalama_siparis_degeri
FROM Olist.v_delivered_orders o
JOIN `Olist.olist_order_items_dataset` oi ON o.order_id = oi.order_id
GROUP BY yil, ay
ORDER BY yil, ay;
