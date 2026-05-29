# 📊 Bank Müştərilərinin Tərk Etməsi (Churn) Analizi || Bank Customer Churn & Risk Analysis

---

## 📌 Layihə Haqqında (Project Overview)
Bu layihə, bir bankın 10,000-dən çox müştəri məlumatını analiz edərək müştəri itkisinin (churn) və məmnuniyyət səviyyəsinin əsas səbəblərini ortaya çıxarmaq üçün hazırlanmışdır. Layihə məlumatların ilkin təmizlənməsindən başlayaraq, SQL sorğuları,
Python vizuallaşdırması və nəticə olaraq Power BI-da interaktiv hesabatın qurulmasına qədər bütün analitik mərhələləri əhatə edir.

---

📌 Layihə Çərçivəsində Görülən İşlər
-10,000 bank müştərisinə aid məlumatları analiz üçün hazırlamışam.
-MS Excel: Xam dataya ilkin baxış keçirilmiş, dublikat və boş dəyərlər təmizlənmişdir. Pivot Table vasitəsilə müştərilərin məhsul sayına və kredit kartı
 statusuna görə ilkin paylanma strukturu analiz olunmuşdur.
-SQL (GROUP BY, CASE WHEN) vasitəsilə müştəri seqmentasiyası və churn analizləri aparmışam.
-Python: Pandas kitabxanası ilə datanın statistik göstəriciləri çıxarılmış,
  Matplotlib və Seaborn vasitəsilə faktorlar arası asılılıqları göstərən korrelyasiya matrisi (heatmap) və yaş qruplarının paylanma qrafikləri
  qurulmuşdur.
  Analiz nəticələrinə əsasən müştəri itkisini azaltmaq üçün biznes yönümlü insaytlar təqdim etmişəm.
-Power BI: Bütün insaytları vizuallaşdırmaq üçün qabaqcıl UI/UX dizayn prinsiplərinə uyğun, dinamik filtrlərə (slicers) və xüsusi DAX ölçülərinə
 (measures) sahib interaktiv hesabat paneli (dashboard) yaradılmışdır.

## Layihə Faylları
Layihədə istifadə olunan əsas fayllara aşağıdakı linklər vasitəsilə baxa bilərsiniz:

- [CSV Dataset](BankCustomers.csv)
- [SQL Sorğuları](customer_churn_queries.sql)
- [Python Analiz Faylı](BankCustomers_ChurnAnalysis.py)
- [Power BI Faylı](BankCustomers_Churn_Dashboard.pbix)
---

## 🌍 Language Selection / Dil Seçimi
* [📊 English Version](#english-version)
* [📊 Azərbaycan Dilində Versiya](#azerbaycan-dilinde-versiya)

---

## Azerbaycan Dilində Versiya
* ## 🛠️ İstifadə Olunan Alətlər və Texnologiyalar (Tech Stack)
* **Məlumatların Hazırlanması:** MS Excel (Pivot Tables & İlkin Filtrasiya)
* **Məlumat Bazası Sorğuları:** SQL (Data Profiling, Aqreqasiya və Seqmentasiya)
* **Eksperimental Analiz (EDA):** Python (Pandas, Matplotlib / Seaborn ilə vizuallaşdırma)
* **Biznes İntellekti (BI):** Power BI (Advanced UI/UX, Custom DAX Measures, Slicers)

---

## English Version

## 🛠️ Tech Stack & Skills Developed
* **Data Preparation:** MS Excel (Pivot Tables, Data Cleaning & Initial Filtering)
* **Database Querying:** SQL (Data Profiling, Aggregations & Customer Segmentation)
* **Exploratory Data Analysis (EDA):** Python (Pandas for data manipulation, Matplotlib & Seaborn for statistical visualization)
* **Business Intelligence (BI):** Power BI (Advanced UI/UX design, Custom DAX Measures & Dynamic Slicers)

* 
## 🔄 Layihənin Mərhələləri (Project Workflow)

1️⃣ Excel Mərhələsi: İlkin Baxış və Data Təmizlənməsi
Məlumat bazasından gələn xam data ilkin olaraq Excel-ə köçürülmüş, duplicate (təkrar) və null (boş) dəyərlər təmizlənmişdir. Pivot Table vasitəsilə müştərilərin kredit kartı statusu və məhsul sayına görə ilkin paylanma dinamikası analiz edilmişdir.

📂 [CSV Dataset](BankCustomers.csv)

2️⃣ SQL Mərhələsi: Məlumat Bazası Sorğuları (Data Extracting & Aggregation)
Məlumatların profilini çıxarmaq, müştəriləri aktivlik, coğrafiya və şikayət statusuna görə seqmentasiya etmək üçün GROUP BY və CASE WHEN funksiyalarından istifadə edilməklə optimallaşdırılmış analiz sorğuları yazılmışdır.

📂 Yazılmış bütün SQL sorğuların faylı: - [SQL Sorğuları](customer_churn_queries.sql)

3️⃣ Python Mərhələsi: Eksperimental Data Analizi (EDA)
Python (Pandas) vasitəsilə datanın statistik göstəriciləri çıxarılmış, Matplotlib və Seaborn kitabxanaları ilə faktorlar arası asılılıqları göstərən korrelyasiya matrisi (heatmap) və yaş qruplarının paylanma qrafikləri qurulmuşdur.

📂Bu layihədə istifadə olunan Python analiz faylına aşağıdakı link vasitəsilə baxa bilərsiniz:
[Python Analiz Faylı](BankCustomers_ChurnAnalysis.py)

4️⃣ Power BI Mərhələsi: İnteraktiv Dashboard-un Qurulması
Bütün analitik tapıntıların yekun nəticəsi olaraq, bank rəhbərliyinin kritik qərarları sürətli qəbul etməsi üçün hazırlanmış, xüsusi DAX metriklərinə və qabaqcıl UI/UX dizaynına sahib hesabat paneli:

📂 İnteraktiv Power BI hesabat faylı:- [Power BI Dashboard](BankCustomers_Churn_Dashboard.pbix)

📊 **Yekun İnteraktiv Dashboard Görünüşü (Power BI):**
Bank rəhbərliyinin kritik qərarları sürətli qəbul etməsi üçün hazırlanmış,
xüsusi DAX metriklərinə və qabaqcıl UI/UX dizaynına sahib hesabat paneli:

![Yekun Power BI Dashboard](/images/power_bi-dashboard.png)

## 📊 Excel Pivot Table ilə Biznes Analizi

Bu mərhələdə SQL və Python ilə yanaşı, layihənin biznes analitika tərəfini daha da dərinləşdirmək üçün Excel proqramında interaktiv Pivot cədvəllər və şərti formatlaşdırma (Conditional Formatting) modelləri qurdum. Məqsədim müştəri davranışındakı çarpaz asılılıqları (coğrafiya, gender, şikayətlər və s.) eyni anda analiz etməkdir.

### 📌 Pivot Cədvəl Vasitəsilə Tapılan Əsas İnsaytlar:

1. **🚨 Kritik Şikayət Riski (Ən Böyük Təhlükə):**
   Bankda şikayət qeydə alınan 2,044 müştərinin **99.80%-i (2,034 nəfər)** bankı tərk edib! Bu rəqəm sübut edir ki, şikayət mexanizmi və müştəri xidmətləri böhran vəziyyətindədir. Şikayət edən müştəri faktiki olaraq dərhal sistemi tərk edir.

2. **🌍 Coğrafi İtki Payı:**
   Müştəri sayına görə Fransa öndə olsa da, bankı tərk edənlərin sayında **Almaniya (39.94%)** və **Fransa (39.79%)** demək olar ki, eyni dərəcədə yüksək itki payına malikdir. İspaniya isə 20.26% ilə ən stabil regiondur.

3. **👩‍💼 Gender Amili:**
   Qadın müştərilərin bankı tərk etmə nisbəti (**55.89%**), kişi müştərilərə nisbətən (**44.11%**) nəzərəçarpacaq dərəcədə yüksəkdir. 

4. **💳 Kredit Kartı Yanılsaması:**
   Kredit kartı olan müştərilərin ümumi tərk edənlər arasındakı payı **69.92%**-dir. Bu, bank daxilində kredit kartı məhsulunun müştərini sistemə bağlamaq üçün yetərli proqramlara malik olmadığını göstərir.

5. **⭐ Müştəri Məmnuniyyəti (Satisfaction Score):**
   Məmnuniyyət balı 1 və 2 olan müştərilərin getmə riski daha yüksəkdir. Maraqlıdır ki, balı 3-5 arası olanlarda da ciddi azalma yoxdur, bu da müştərilərin xidmətdən asılı olmayaraq fərqli maliyyə səbəblərindən getdiyinə işarə edir.
![Correlation](images/excel_pivot.png)

---
Bank müştərilərinin davranışlarını analiz edərək müştəri itkisinə (churn) təsir edən əsas faktorları müəyyən etmişəm.
Analiz nəticəsində 2 məhsulu olan müştərilərin daha sadiq, 3-4 məhsulu olanların isə yüksək riskli olduğunu aşkarlamışam.
Kredit kartı istifadəsinin müştəri sadiqliyinə ciddi təsir etmədiyini müəyyən edərək lazımsız kampaniya xərcləri ilə bağlı nəticələr çıxarmışam.
Statistik analizlər nəticəsində aktiv üzvlüyün churn riskini azaltdığını, 46-60 yaş arası müştərilərin isə ən riskli seqment olduğunu müəyyən etmişəm.
Əldə olunan nəticələr əsasında bank üçün müştəri saxlama və marketinq strategiyaları üzrə biznes yönümlü təkliflər hazırlamışam.
---
![Correlation](images/correlation.png.png)

Qrafikin Mənası (Rənglər): Bu qrafik faktorların bir-biri ilə riyazi əlaqəsini göstərir.
Qırmızı rənglər müsbət (birlikdə artan), göy rənglər isə mənfi (biri artanda digəri azalan) əlaqəni bildirir.
$0.00$ isə tamamilə təsirsiz deməkdir.

Ən Böyük Təhlükə — Yaş (Age ➡️ $+0.29$): Müştəri itkisi (Exited) ilə ən güclü müsbət əlaqə yaşdadır.
Yəni müştərinin yaşı artdıqca, bankı tərk etmə riski də düz mütənasib olaraq artır.

Ən Yaxşı Həll — Aktivlik (IsActiveMember ➡️ $-0.16$): İtki ilə ən güclü mənfi (tərs) əlaqə buradadır.
Yəni, müştəri sistemdə neçə çox aktiv olarsa, bankdan getmə riski bir o qədər azalır.

Təsirsiz Faktor — Kredit Kartı (HasCrCard ➡️ $-0.01$): Rəqəm sıfıra bərabərdir.
Deməli, müştəriyə kredit kartı vermək onun bankda qalıb-qalmamasına heç bir təsir etmir.

### 📈 Key Insights & Business Findings
![Age Group](images/age_groups.png)

Qrafikin Biznes İzahı:
Bu qrafik bankın demoqrafik zəifliyini ortaya qoyur. 46-60 yaş arası (Yaşlılar) qrupunda itki faizi 50%-dən çoxdur.
Yəni bankdakı hər iki yaşlı müştəridən biri hesabı bağlayıb gedir.
Ən sadiq qrup isə gənclərdir (18-30 yaş). Bank yaşlı nəsil üçün rəqəmsal əlçatanlığı və depozit şərtlərini yaxşılaşdırmalıdır.

---

![Age Group](images/credit_card.png)

Qrafikin Biznes İzahı:

Bu istilik xəritəsi (Heatmap) bizə hansı faktorun müştərinin getməsinə birbaşa təsir etdiyini göstərir.
Müştəri itkisi (Exited) ilə ən güclü müsbət əlaqə Yaş (+0.29) amilindədir.
Ən güclü mənfi əlaqə isə Aktiv Üzvlük (-0.16) göstəricisindədir. 
Yəni müştərini sistemdə aktiv saxlamaq onun qaçma riskini birbaşa azaldır.


### 📈 Əsas Çıxarılan Qərarlar (Insights)

#### 1. Məhsul Strategiyası Fəsadları
Müştərinin **2 məhsulu olduqda itki minimumdur (7.60% Churn)**. 3 və ya 4 məhsul satıldıqda isə itki dərhal **82%-100%-ə dırmaşır**.

#### 2. Riyazi Əlaqələr və Kredit Kartının Təsirsizliyi
Yaş ilə Churn arasında güclü müsbət əlaqə var (**+0.29**). Kredit kartı sahibliyi isə **-0.01** çıxmışdır, yani kartın olub-olmaması müştərinin sadiqliyinə riyazi təsir göstərmir.

#### 3.
Məhsul Sayı Riski: Bankda 2 məhsulu olan müştərilər ən sadiq müştərilərdir (cəmi 7.60% itki). Lakin müştəriyə 3 və ya 4 məhsul satıldıqda,
narazılıq yaranır və müştərilərin demək olar ki, hamısı (82% - 100%-i) bankı tərk edir.

#### 4.
Yaşlı Nəslin İtirilməsi: 46-60 yaş arası (Yaşlılar) müştəri qrupunda tərk etmə faizi çox yüksəkdir — 50%-dən çox.
Hər iki yaşlı müştəridən biri bankdan gedir. Bu sahədə yaşlılar üçün xüsusi xidmət və ya proqramlara ehtiyac var.
