# 📊 Bank Customer Churn & Risk Analysis

An End-to-End Data Analytics Project using SQL and Python.
SQL və Python alətlərindən istifadə edilməklə hazırlanmış ucdan-uca data analitikası layihəsi.

---

## 🌍 Language Selection / Dil Seçimi
* [📊 English Version](#english-version)
* [📊 Azərbaycan Dilində Versiya](#azerbaycan-dilinde-versiya)

---

## English Version

### 🛠️ Tech Stack & Tools Used
* **SQL:** Comprehensive queries are stored in `customer_churn_queries.sql`
* **Python:** Full exploratory data analysis (EDA) code is available in `churn_analysis.ipynb`

---

### 📈 Key Insights & Business Findings

#### 1. Product Portfolio Saturation
Having **2 products is the Sweet Spot (7.60% Churn)**. Forcing 3 or 4 products triggers an aggressive customer flight (**82% - 100% Churn**).
![Product Analysis](tt.png)

#### 2. Age Group Vulnerability
Customers aged **46-60 (Seniors) have a churn rate over 50%**. Every second senior customer leaves the bank.
![Age Analysis](age_groups.png)

#### 3. Correlation Matrix & Credit Card Neutrality
`Age` has the strongest positive correlation (**+0.29**) with Churn. Conversely, `credit_card` ownership has a correlation of **-0.01** (virtually zero), proving that credit cards do not influence customer retention.
![Correlation Matrix](correlation.png)
![Credit Card Analysis](credit_card.png)

---

## Azerbaycan Dilinde Versiya

### 🛠️ İstifadə Olunan Alətlər
* **SQL:** Bütün sorğular `customer_churn_queries.sql` faylı daxilində yerləşir.
* **Python:** Tam analitik kodlar `churn_analysis.ipynb` faylı daxilində yerləşir.

---

### 📈 Əsas Biznes Tapıntıları və İnsaytlar

#### 1. Məhsul Strategiyası Fəsadları
Müştərinin **2 məhsulu olduqda itki minimumdur (7.60% Churn)**. 3 və ya 4 məhsul satıldıqda isə itki dərhal **82%-100%-ə dırmaşır**.
*(Graph reference: See `tt.png` above)*

#### 2. Yaşlı Nəslin İtirilməsi
**46-60 yaş arası müştərilərdə itki faizi 50%-dən çoxdur**. Hər iki yaşlı müştəridən biri bankı tərk edir.
*(Graph reference: See `age_groups.png` above)*

#### 3. Riyazi Əlaqələr və Kredit Kartının Təsirsizliyi
Yaş ilə Churn arasında güclü müsbət əlaqə var (**+0.29**). Kredit kartı sahibliyi isə **-0.01** çıxmışdır, yani kartın olub-olmaması müştərinin sadiqliyinə riyazi təsir göstərmir.
*(Graph reference: See `correlation.png` and `credit_card.png` above)*
