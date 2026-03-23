SELECT
  OverTime,
  CASE 
    WHEN YearsAtCompany <= 2 THEN '0-2 years' --> NEW EMPLOYEE
    ELSE 'Other'
  END AS tenure_group,

  COUNT(*) AS total_employees,
  COUNTIF(Attrition = TRUE) AS employees_left,
  ROUND(COUNTIF(Attrition = TRUE) / COUNT(*) * 100, 2) AS attrition_rate

FROM `dataset_attrition_IBM.cleaned_attrition_data`
WHERE Department = 'Sales'
  AND MonthlyIncome <= 2909 --> LOW SALARY

GROUP BY OverTime, tenure_group
ORDER BY attrition_rate DESC

/*    WITHIN SALES DEPARTMENT WITH LOW SALARY
      Row	OverTime	tenure_group	total_employees	employees_left	attrition_rate
      1	  true	    0-2 years	    10	            8	              80.0
      2	  true	    Other	        10	            6	              60.0
      3	  false	    0-2 years	    35	            13	            37.14
      4	  false	    Other	        9	              1	              11.11
*/
