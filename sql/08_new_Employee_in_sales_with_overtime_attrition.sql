SELECT
  Department,
  OverTime,
  CASE 
    WHEN YearsAtCompany <= 2 THEN '0-2 years'
    ELSE 'Other'
  END AS tenure_group,

  COUNT(*) AS total_employees,
  COUNTIF(Attrition = TRUE) AS employees_left,
  ROUND(COUNTIF(Attrition = TRUE) / COUNT(*) * 100, 2) AS attrition_rate

FROM `dataset_attrition_IBM.cleaned_attrition_data`
GROUP BY Department, OverTime, tenure_group
ORDER BY attrition_rate DESC

# Sales department + overtime + new employee (0-2 year tenure) --> HIGHEST attrition 62.07%
