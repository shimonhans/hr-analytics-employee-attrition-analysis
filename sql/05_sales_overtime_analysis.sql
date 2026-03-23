SELECT 
  Department,
  OverTime,
  COUNT(*) AS total_employees,
  COUNTIF(Attrition = TRUE) AS employees_left,
  ROUND(COUNTIF(Attrition = TRUE) / COUNT(*) * 100, 2) AS attrition_rate
FROM `dataset_attrition_IBM.cleaned_attrition_data`
GROUP BY Department, OverTime
ORDER BY Department, attrition_rate DESC

/*
      Row	Department	            OverTime	total_employees	employees_left	attrition_rate
      1	  Human Resources	        true	    17	            5	              29.41
      2	  Human Resources	        false	    46	            7	              15.22
      3	  Research & Development	true	    271	            74	            27.31
      4	  Research & Development	false	    690	            59	            8.55
      5	  Sales	                  true	    128	            48	            37.5
      6	  Sales	                  false	    318	            44	            13.84
*/   
