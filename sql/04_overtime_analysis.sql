SELECT 
  OverTime,
  COUNT(*) AS total_employees,
  COUNTIF(Attrition = TRUE) AS employees_left,
  ROUND(COUNTIF(Attrition = TRUE) / COUNT(*) * 100, 2) AS attrition_rate
FROM `dataset_attrition_IBM.cleaned_attrition_data`
GROUP BY OverTime
ORDER BY attrition_rate DESC

      /*
      Row	OverTime	total_employees	employees_left	attrition_rate
      1	  true	    416	            127	            30.53
      2	  false	    1054	          110	            10.44
      */   
