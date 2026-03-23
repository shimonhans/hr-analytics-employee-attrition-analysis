SELECT 
  COUNT(*) AS total_employees,
  COUNTIF(Attrition = TRUE) AS employees_left,
  ROUND(COUNTIF(Attrition = TRUE) / COUNT(*) * 100, 2) AS attrition_rate_percent
FROM `dataset_attrition_IBM.cleaned_attrition_data`


    # COMPANY ATTRITION RATE --> 16.12%   
