import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

df = pd.read_csv('BankCustomers.csv')

#. Qrafikin ümumi stilini peşəkar korporativ formaya salırıq
"""sns.set_theme(style="whitegrid")

#. Qrafikin ölçüsünü təyin edirik (Eni 10, Hündürlüyü 6 düym)
plt.figure(figsize=(10, 6))

# Seaborn ilə Sütun Qrafiki çəkirik x oxuna məhsul sayını, y oxuna isə Churn (Exited) faizini qoyuruq
sns.barplot(x='NumOfProducts', y='Exited', data=df, estimator=lambda x: sum(x)*100/len(x), ci=None, palette="Blues_r")
plt.title('Customer Churn Rate by Number of Products', fontsize=14, fontweight='bold', pad=15)
plt.xlabel('Number of Products Registered', fontsize=12)
plt.ylabel('Churn Rate (%)', fontsize=12)

# Qrafiki ekranda göstəririk
plt.show()"""

"""
sns.set_theme(style="whitegrid")
plt.figure(figsize=(8, 5))
sns.barplot(x='Geography', y='Exited', data=df, estimator=lambda x: sum(x)*100/len(x), ci=None, palette="rocket")
plt.title('Customer Churn Rate by Geography', fontsize=14, fontweight='bold', pad=15)
plt.xlabel('Country', fontsize=12)
plt.ylabel('Churn Rate (%)', fontsize=12)

plt.show()
"""


# 1. Datanın daxilindəki yalnız rəqəmsal sütunları seçirik (çünki mətnlərin korrelyasiyası olmur)
"""numeric_df = df[['CreditScore', 'Age', 'Tenure', 'Balance', 'NumOfProducts', 'HasCrCard', 'IsActiveMember', 'EstimatedSalary', 'Exited']]
# 2. Korrelyasiya matrisini hesablayırıq
corr_matrix = numeric_df.corr()
# 3. Qrafikin ölçüsünü təyin edirik
plt.figure(figsize=(10, 8))
# 4. Seaborn ilə Heatmap çəkirik
# annot=True hər kvadratın içinə riyazi rəqəmi yazır
# cmap="coolwarm" mənfi əlaqələri göy, müsbət əlaqələri isə qırmızı (isti) rənglə göstərir
sns.heatmap(corr_matrix, annot=True, cmap="coolwarm", fmt=".2f", linewidths=0.5)

plt.title('Correlation Matrix of Customer Attributes', fontsize=14, fontweight='bold', pad=15)
plt.show()"""

# 1. Pandas-ın 'cut' funksiyası ilə yaşları qruplaşdırırıq (Binning)
"""yas_araliqlari = [18, 30, 45, 60, 100]
qrup_adlari = ['18-30 (Gənclər)', '31-45 (Orta Yaş)', '46-60 (Yaşlılar)', '60+ (Təqaüdçülər)']

df['Age_Group'] = pd.cut(df['Age'], bins=yas_araliqlari, labels=qrup_adlari)
#. Pandas 'groupby' ilə hər qrupun Churn Rate-ini hesablayırıq
yas_analizi = df.groupby('Age_Group')['Exited'].mean() * 100
yas_analizi = yas_analizi.reset_index()

#. İndi isə bunu vizuallaşdırırıq
plt.figure(figsize=(10, 5))
sns.barplot(x='Age_Group', y='Exited', data=yas_analizi, palette="coolwarm")

plt.title('Churn Rate (%) by Age Groups', fontsize=14, fontweight='bold')
plt.xlabel('Age Category')
plt.ylabel('Churn Rate (%)')
plt.show()"""

# Pandas ilə çarpaz cədvəl (Pivot table) məntiqi qururuq
# kart_analizi = df.groupby('HasCrCard')['Exited'].mean() * 100
# kart_analizi = kart_analizi.reset_index()

# kart_analizi['HasCrCard'] = kart_analizi['HasCrCard'].map({0: 'Kredit Kartı Yoxdur', 1: 'Kredit Kartı Var'})

# plt.figure(figsize=(8, 5))
# sns.barplot(x='HasCrCard', y='Exited', data=kart_analizi, palette="Set2")

# plt.title('Churn Rate (%) based on Credit Card Ownership', fontsize=14, fontweight='bold')
# plt.xlabel('Credit Card Status')
# plt.ylabel('Churn Rate (%)')
# plt.show()

