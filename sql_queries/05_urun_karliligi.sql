-- 5. Ürün Kârlılık Analizi
WITH urun_gelir AS (
    SELECT
        product_id,
        ROUND(SUM(price), 2) AS total_revenue
    FROM `Olist.olist_order_items_dataset`
    GROUP BY product_id
)
SELECT
    CASE 
        WHEN total_revenue > 1000 THEN 'Yüksek Kârlı'
        WHEN total_revenue > 100 THEN 'Orta Kârlı'
        ELSE 'Düşük / Kârsız'
    END AS karlililk_grubu,
    COUNT(*) AS urun_sayisi,
    ROUND(SUM(total_revenue), 2) AS toplam_gelir
FROM urun_gelir
GROUP BY karlililk_grubu
ORDER BY urun_sayisi DESC;
