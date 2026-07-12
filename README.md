# TeleComX Customer Churn Analysis
### Predictive Analytics | Python | SQL | Power BI

---

## Project Overview

TeleComX is a telecommunications company with over 7,000 customers 
experiencing an accelerating churn rate that rose from 18% to 26.54%. 
This project was commissioned to identify why customers leave, which 
customers are most at risk, and what the business should do to retain them.

This is a full end-to-end business analytics project covering data 
cleaning, SQL analysis, exploratory data analysis, predictive modeling, 
dashboard development, and executive reporting.

---

## Business Questions Answered

- What is the current churn rate?
- Which contract types have the highest churn?
- Does payment method influence churn?
- Do new customers churn more than long-term customers?
- Can we predict which customers will churn before they leave?
- What retention strategies should the business implement?

---

## Project Structure

telecomx-churn-analysis/
├── data/
│   ├── WA_Fn-UseC_-Telco-Customer-Churn.csv  # Raw dataset
│   └── telecomx_clean.csv  # Cleaned dataset

├── notebooks/
│   ├── 01_data_understanding.ipynb
│   ├── 02_sql_analysis.ipynb
│   ├── 03_eda.ipynb
│   ├── 04_feature_engineering.ipynb
│   └── 05_modeling.ipynb

├── sql/
│   └── churn_queries.sql

├── visuals/
│   ├── 01_churn_distribution.png
│   ├── 02_churn_by_contract.png
│   ├── 03_internet_payment_churn.png
│   ├── 04_tenure_distribution.png
│   ├── 05_monthly_charges_churn.png
│   ├── 06_techsupport_security_churn.png
│   ├── 07_correlation_heatmap.png
│   ├── 08_confusion_matrix.png
│   └── 09_feature_importance.png

├── report/
│   ├── TeleComX_Retention_Strategy.docx
│   └── TeleComX_Executive_Summary.pdf

└── README.md

---

---

## Key Findings

| Finding | Data Point |
|---|---|
| Overall churn rate | 26.54% |
| Month-to-month churn rate | 42.71% |
| Two-year contract churn rate | 2.83% |
| Electronic check churn rate | 45.29% |
| Fiber optic churn rate | 41.89% |
| New customer churn (0-12 months) | 47.44% |
| Highest risk segment | MTM + Fiber + E-check = 60.37% |

---

## Predictive Model Results

| Model | Accuracy | ROC-AUC | Recall | F1 Score |
|---|---|---|---|---|
| Logistic Regression | 80.70% | 84.19% | 56.42% | 60.81% |
| Decision Tree | 79.42% | 82.67% | 54.01% | 58.21% |
| Random Forest | 79.28% | 82.36% | 49.47% | 55.89% |

**Selected Model:** Logistic Regression
**Correctly identified at-risk customers:** 211 out of 374

---

## Retention Recommendations

1. **Contract Migration** — Offer incentives for month-to-month customers 
to switch to annual contracts (expected 8% churn reduction)
2. **Payment Migration** — Incentivise automatic payment methods to reduce 
electronic check usage
3. **90-Day Onboarding** — Structured programme for new customers during 
the highest-risk churn window
4. **Fiber Quality Review** — Investigate service quality for fiber optic 
customers paying premium prices
5. **Services Bundling** — Include tech support in high-risk customer 
packages

---

## Tools & Technologies

- **Python** — Pandas, NumPy, Matplotlib, Seaborn, Scikit-learn
- **SQL** — SQLite via Python (sqlite3)
- **Power BI** — 3-page interactive dashboard
- **Jupyter Notebook** — Analysis environment
- **Dataset** — IBM Telco Customer Churn (Kaggle)

---

## Dashboard Preview

*Screenshots from Power BI dashboard — see /visuals folder*

---

## About

**Analyst:** Adedayo Adeyinka A

**Background:** Transitioning from Microbiology into Business Analytics

**Focus:** Building a portfolio of end-to-end analytics projects 
demonstrating SQL, Python, machine learning, and business communication

Connect with me on LinkedIn: [https://linkedin.com/in/adeyinka-adedayo]
