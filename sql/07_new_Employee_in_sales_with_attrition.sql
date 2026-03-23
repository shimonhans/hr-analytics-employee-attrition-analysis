SELECT
  Department,
  CASE 
    WHEN YearsAtCompany <= 2 THEN '0-2 years'
    ELSE 'Other'
  END AS tenure_group,

  COUNT(*) AS total_employees,
  COUNTIF(Attrition = TRUE) AS employees_left,
  ROUND(COUNTIF(Attrition = TRUE) / COUNT(*) * 100, 2) AS attrition_rate

FROM `dataset_attrition_IBM.cleaned_attrition_data`
WHERE Department = 'Sales'
GROUP BY Department, tenure_group
ORDER BY attrition_rate DESC

/*
      Row	Department	tenure_group	total_employees	employees_left	attrition_rate
      1	  Sales	      0-2 years	    103	            36	            34.95
      2	  Sales	      Other   	    343	            56	            16.33	
*/
