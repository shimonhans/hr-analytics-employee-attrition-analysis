SELECT -- Tenure grouping between years in the company
  CASE 
    WHEN YearsAtCompany <= 2 THEN '0-2 years'
    WHEN YearsAtCompany <= 5 THEN '3-5 years'
    WHEN YearsAtCompany <= 10 THEN '6-10 years'
    ELSE '10+ years'
  END AS tenure_group,
  
  COUNT(*) AS total_employees,
  COUNTIF(Attrition = TRUE) AS employees_left,
  ROUND(COUNTIF(Attrition = TRUE) / COUNT(*) * 100, 2) AS attrition_rate

FROM `dataset_attrition_IBM.cleaned_attrition_data`
GROUP BY tenure_group
ORDER BY tenure_group

    # NEW EMPLOYEE OVERALL (0-2 years)	--> 29.82% attrition_rate (HIGHEST)


/* 
  3 strong drivers OVERALL COMPANY:
      1. Overtime         → 30.53%
      2. Sales department → 20.63%
      3. 0–2 years tenure → 29.82%
*/
