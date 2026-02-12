-- 6. Teslimat Süresi vs Review Puanı İlişkisi
SELECT
    CASE 
        WHEN delivery_days <= 7 THEN '0-7 gün'
        WHEN delivery_days <= 15 THEN '8-15 gün'
        WHEN delivery_days <= 30 THEN '16-30 gün'
        ELSE '30+ gün'
    END AS teslimat_araligi,
    COUNT(*) AS siparis_sayisi,
    ROUND(AVG(review_score), 2) AS ortalama_puan,
    ROUND(100.0 * SUM(CASE WHEN review_score <= 3 THEN 1 ELSE 0 END) / COUNT(*), 1) AS kotu_yorum_orani_yuzde
FROM (
    SELECT
        o.order_id,
        DATE_DIFF(o.order_delivered_customer_date, o.order_purchase_timestamp, DAY) AS delivery_days,
        r.review_score
    FROM Olist.v_delivered_orders o
    JOIN `Olist.olist_order_reviews_dataset` r ON o.order_id = r.order_id
    WHERE r.review_score IS NOT NULL
) t
GROUP BY teslimat_araligi
ORDER BY 
    CASE teslimat_araligi
        WHEN '0-7 gün' THEN 1
        WHEN '8-15 gün' THEN 2
        WHEN '16-30 gün' THEN 3
        ELSE 4
    END;
