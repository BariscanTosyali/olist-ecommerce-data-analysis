# olist-ecommerce-data-analysis
Olist Brazilian E-Commerce dataset ile SQL analizi: Gelir trendleri, kategori performansı ve teslimat-memnuniyet ilişkisi


# Olist E-Ticaret Veri Analizi ve İş İçgörüleri

BigQuery kullanarak Olist platformunun gerçek e-ticaret verilerini analiz ettiğimiz proje. Müşteriler, ürünler ve satıcıların değer katkısını inceledik, iyileştirme fırsatları belirledik.

## Proje Amacı
Olist veri setini kullanarak şu iş sorularına cevap vermek:
- Hangi müşteriler, ürünler ve satıcılar şirkete en fazla değer katıyor?
- Nerede iyileştirme fırsatları var (gelir, memnuniyet, büyüme)?
- KPI'lar: Toplam sipariş, gelir, review puanı vb.

## Kullanılan Teknolojiler ve Araçlar
- **Veri Depolama & Sorgulama**: Google BigQuery
- **Dil**: SQL (JOIN, Window Functions, CASE, GROUP BY + HAVING, Subqueries)
- **Veri Temizleme**: NULL değer yönetimi, duplicate kontrolü, view oluşturma
- **KPI'lar**: Toplam Gelir, Ortalama Review Puanı, Büyüme Potansiyeli, Ürün Kârlılığı
- **Sunum**: Canva

## Ana Bulgular
Projenin temel KPI'ları ve içgörüleri aşağıda özetlendi. Detaylar sunum PDF'sinde mevcut.

### KPI'lar

### Müşteri, Ürün ve Satıcı Analizi
- Hangi müşteriler, ürünler ve satıcılar şirkete en fazla değer katıyor?  
  - En değerli 10 müşteri (customer_id, total_order_value, total_orders tablosu repo'da eklenecek).

### Büyüme Potansiyeli


- Öneriler:  
  1) Sadakat programı gelir artırır  
  2) Tek seferlik müşteriler ikinci siparişe teşvik edilmeli

### En Değerli 10 Ürün


### Ürün Kârlılık Analizi

- Ürünlerin %95.5'i kârlı → Şirketin ürün portföyü çok sağlıklı.
- 1.000 ürün kârsız → düşük hacimli ama maliyet açısından riskli bir grup.
- Öneriler: Kârsız ürünleri düzeltmek toplam geliri artırmaz ama kârlılığı artırır.

