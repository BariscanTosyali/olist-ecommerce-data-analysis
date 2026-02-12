-- 1. Genel KPI Hesaplamaları
-- Toplam sipariş, ürün geliri, kargo geliri, toplam ödeme, ortalama review

SELECT
    COUNT(DISTINCT o.order_id) AS toplam_siparis,
    ROUND(SUM(oi.price), 2) AS urun_geliri,
    ROUND(SUM(oi.freight_value), 2) AS kargo_geliri,
    ROUND(SUM(oi.price + oi.freight_value), 2) AS toplam_odeme,
    ROUND(AVG(r.review_score), 2) AS ortalama_review
FROM Olist.v_delivered_orders o
JOIN `Olist.olist_order_items_dataset` oi ON o.order_id = oi.order_id
LEFT JOIN `Olist.olist_order_reviews_dataset` r ON o.order_id = r.order_id
WHERE r.review_score IS NOT NULL;
