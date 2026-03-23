# hr-analytics-employee-attrition-analysis
Data-driven analysis of employee attrition revealing 80% turnover in high-risk segments using SQL and BigQuery.


# Employee Attrition Analysis (SQL – BigQuery)

## Overview
Employee attrition is a critical issue that impacts organizational stability, productivity, and cost. This project analyzes employee data using SQL in BigQuery to identify key drivers of attrition and uncover high-risk employee segments.

---

## Objectives
- Analyze overall attrition patterns  
- Identify departments with high turnover  
- Determine key factors influencing employee attrition  
- Detect high-risk employee segments for targeted intervention  

---

## Dataset Summary
- Total Employees: **1,470**
- Key Features:
  - Demographics: Age, Gender, Marital Status  
  - Job Information: Department, Job Role, Job Level  
  - Compensation: Monthly Income  
  - Work Conditions: Overtime, Business Travel  
  - Tenure: Years at Company  
  - Target Variable: **Attrition (TRUE/FALSE)**  

---

## Data Preparation
- Removed irrelevant columns (`string_field_32`, `Date_of_termination`)  
- Verified no missing values in key fields  
- Ensured consistency in categorical variables  
- Created a cleaned dataset for analysis  

---

## Analysis & Findings

### 1. Overall Attrition
- Attrition Rate: **16.12%**

> Indicates a moderately high turnover rate requiring further investigation.

---

### 2. Attrition by Department
| Department | Attrition Rate |
|-----------|---------------|
| Sales | **20.63%** |
| Human Resources | 19.05% |
| Research & Development | 13.84% |

> Sales department identified as the primary contributor to attrition.

---

### 3. Impact of Overtime
| Overtime | Attrition Rate |
|---------|---------------|
| TRUE | **30.53%** |
| FALSE | 10.44% |

> Employees working overtime are **~3x more likely to leave**.

---

### 4. Tenure Analysis
| Tenure Group | Attrition Rate |
|-------------|---------------|
| 0–2 years | **29.82%** |
| 3–5 years | 13.82% |
| 6–10 years | 12.28% |
| 10+ years | 8.13% |

> Attrition is heavily concentrated among **new employees**.

---

### 5. Salary Analysis (Quartile-Based)
| Salary Group | Attrition Rate |
|-------------|---------------|
| Low | **29.43%** |
| Mid-Low | 14.13% |
| Mid-High | 10.71% |
| High | 10.24% |

> Lower-paid employees are significantly more likely to leave.

---

## Deep-Dive Analysis (Sales Department)

### Key Drivers within Sales:
- **New employees (0–2 years)** → **34.95%** vs 16.33% (others)  
- **Overtime employees** → **37.50%** vs 13.84% (non-overtime)  
- **Low salary employees** → **43.75%** vs ~15–17% (others)  

> Each factor independently contributes to higher attrition within Sales.

---

## Most Critical Segment

**Sales + Low Salary + Overtime + 0–2 Years**

- Attrition Rate: **80%**

> **8 out of 10 employees in this group leave the company**

---

## Key Insights
- Attrition is concentrated in specific employee segments  
- Sales department has the highest turnover (**20.63% vs 16.12% overall**)  
- Overtime increases attrition from **10.44% to 30.53% (~3x higher)**  
- New employees (0–2 years) show **29.82% attrition**  
- Low salary employees show **29.43% attrition vs 10.24% (high salary)**  
- Combined risk factors drive attrition as high as **80%**  


---

## Conclusion
Employee attrition is driven by a **combination of factors rather than a single cause**. The most critical issue lies among **new, low-paid Sales employees working overtime**, where attrition reaches **80%**.

Addressing these factors can significantly improve employee retention and organizational stability.

---

## Tools Used
- SQL  
- Google BigQuery  
