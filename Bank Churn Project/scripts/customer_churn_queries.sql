/*-- LAYİHƏ: Bank Müştərilərinin Tərk Etməsi (Churn) və Risk Analizi
-- MƏQSƏD: Junior Data Analitik Portfoliom üçün SQL Analizləri
-- DATASET: 10,000 Müştəri Məlumatı (Təmizlənmiş Data)
-- =====================================================================
======================================================================================
📊 PROJECT: Bank Customer Churn & Risk Analysis (SQL Component)
📂 DATASET: 10,000 Bank Customers
👤 ROLE: Junior Data Analyst Portfolio Project
======================================================================================

🌍 ENGLISH
--------------------------------------------------------------------------------------
📌 Purpose of this SQL File:
This script performs structural data aggregation, segmentation, and risk tracking 
to identify why the bank's customers are churning (leaving). 

📝 Key Steps & Analytical Tasks Covered:
1. Product Portfolio Risk Analysis: Tracked churn rates across customer product counts.
2. Regional & Financial Outflow Matrix: Calculated capital flight (€97M) in Germany vs. other countries.
3. Credit Score Risk Segmentation: Categorized customers into 'Poor', 'Fair/Good', 
   and 'Excellent' tiers using CASE-WHEN logic to analyze financial behavior vs. loyalty.
4. Active Member Evaluation: Compared loyalty metrics between active and passive users.

======================================================================================

🇦🇿 AZƏRBAYCAN DİLİ
--------------------------------------------------------------------------------------
📌 Bu SQL Faylının Məqsədi:
Bu skript, bank müştərilərinin tərk etmə (churn) səbəblərini tapmaq üçün data aqreqasiyası, 
seqmentasiya və risk analizi sorğularını icra edir.

📝 İcra Olunan Əsas Addımlar və Analitik Tapşırıqlar:
1. Məhsul Portfeli Risk Analizi: Müştərilərin sahib olduğu məhsul sayına görə itki faizləri.
2. Regional və Maliyyə Axını Matrisi: Almaniyadakı kütləvi kapital axınını (€97M) və 
   digər ölkələrlə müqayisəni hesablamaq.
3. Kredit Skoruna Görə Risk Seqmentasiyası: CASE-WHEN məntiqi ilə müştəriləri 'Riskli', 
   'Orta' və 'Mükəmməl' qruplara bölərək maliyyə davranışı ilə bankda qalma faizi arasındakı əlaqəni yoxlamaq.
4. Aktiv Üzvlərin Qiymətləndirilməsi: Aktiv və aktiv olmayan istifadəçilərin itki faizlerinin müqayisəsi.

======================================================================================
*/
-- ANALİZ 1: Regionlar üzrə müştəri itkisi analizi
-- Məqsəd: Ən çox müştəri itkisi olan ölkəni müəyyən etmək.
/*
SELECT 
    Geography AS Olke,
    COUNT(*) AS Toplam_Musteri,
    SUM(Exited) AS Terk_Eden_Musteri,
    CAST((SUM(Exited) * 100.0) / COUNT(*) AS DECIMAL(10,2)) AS Churn_Rate_Faiz,
    CAST(SUM(CASE WHEN Exited = 1 THEN Balance ELSE 0 END) AS DECIMAL(15,2)) AS Itirilmis_Toplam_Balans
FROM BankCustomers
GROUP BY Geography
ORDER BY Itirilmis_Toplam_Balans DESC;


-- ANALİZ 2: Kredit skoruna görə müştəriler
-- Məqsəd: VİP müştərilərin sadiqlik dərəcəsini yoxlamaq.
SELECT 
    CASE
        WHEN CreditScore < 500 THEN 'Riskli Musteri (Poor)'
        WHEN CreditScore BETWEEN 500 AND 700 THEN 'Orta Musteri (Fair/Good)'
        ELSE 'Mukemmel Musteri (Excellent)'
    END AS CreditTipi,
    COUNT(*) AS Toplam_Musteri,
    SUM(Exited) AS Terk_Eden_Musteri,
    CAST((SUM(Exited) * 100.0 / COUNT(*)) AS DECIMAL(10,2)) AS Churn_Faizi
FROM BankCustomers
GROUP BY 
    CASE
        WHEN CreditScore < 500 THEN 'Riskli Musteri (Poor)'
        WHEN CreditScore BETWEEN 500 AND 700 THEN 'Orta Musteri (Fair/Good)'
        ELSE 'Mukemmel Musteri (Excellent)'
    END
ORDER BY Churn_Faizi DESC;



-- ANALİZ 3: Məhsul sayına görə risk analizi
-- Məqsəd: Çarpaz satışın (Cross-selling) müştəri itkisinə təsirini görmək.
SELECT 
    NumOfProducts AS MehsulSayiOlanMusteri,
    COUNT(*) AS Toplam_Musteri,
    SUM(Exited) AS Terk_Eden_Musteri,
    CAST((SUM(Exited) * 100.0 / COUNT(*)) AS DECIMAL(10,2)) AS NumOfProducts_Rate
FROM BankCustomers
GROUP BY NumOfProducts
ORDER BY NumOfProducts_Rate DESC; -- Ən yüksək riskdən ən aşağıya doğru


-- ANALİZ 4: Aktivlik Müştəri İtkisinə Təsiri
-- Məqsəd: Aktivlik faktorunun müştəri qərarındakı rolunu tapmaq.
SELECT 
    IsActiveMember AS Aktivlik_Statusu,
    COUNT(*) AS Toplam_Musteri,
    SUM(Exited) AS Terk_Eden_Musteri,
    CAST((SUM(Exited) * 100.0 / COUNT(*)) AS DECIMAL(10,2)) AS Churn_Rate_Faiz
FROM BankCustomers
GROUP BY IsActiveMember



-- ANALİZ 5: Şikayətlərin Müştəri İtkisinə Təsiri
-- Məqsəd: Şikayət faktorunun müştəri qərarındakı rolunu tapmaq.
SELECT 
    Complain AS Şikayet_Statusu,
    COUNT(*) AS Toplam_Musteri,
    SUM(Exited) AS Terk_Eden_Musteri,
    CAST((SUM(Exited) * 100.0 / COUNT(*)) AS DECIMAL(10,2)) AS Churn_Rate_Faiz
FROM BankCustomers
GROUP BY Complain
*/

select card_type as kart_tipleri,
count(*) as toplam_musteri,
sum(exited) as terk_edenlerin_sayi,
cast((sum(exited)*100.0/count(*))  as decimal(10,2)) as churn_rate_faiz
from bankCustomers group by card_type

