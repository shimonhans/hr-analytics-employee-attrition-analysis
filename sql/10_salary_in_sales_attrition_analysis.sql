    # Drill down into sales department

SELECT
  CASE 
    WHEN MonthlyIncome <= 2909 THEN 'Low'
    WHEN MonthlyIncome <= 4908 THEN 'Mid-Low'
    WHEN MonthlyIncome <= 8268 THEN 'Mid-High'
    ELSE 'High'
  END AS salary_group,

  COUNT(*) AS total_employees,
  COUNTIF(Attrition = TRUE) AS employees_left,
  ROUND(COUNTIF(Attrition = TRUE) / COUNT(*) * 100, 2) AS attrition_rate

FROM `dataset_attrition_IBM.cleaned_attrition_data`
WHERE Department = 'Sales'
GROUP BY salary_group
ORDER BY attrition_rate DESC

/*
    Row	salary_group	total_employees	employees_left	attrition_rate
    1	  Low	          64	            28	            43.75     -- > HIGHEST
    2	  High	        127	            22	            17.32
    3	  Mid-High	    165	            28	            16.97
    4	  Mid-Low	      90	            14	            15.56
*/
