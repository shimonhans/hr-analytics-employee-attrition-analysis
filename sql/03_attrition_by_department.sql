SELECT 
  Department,
  COUNT(*) AS total_employees,
  COUNTIF(Attrition = TRUE) AS employees_left,
  ROUND(COUNTIF(Attrition = TRUE) / COUNT(*) * 100, 2) AS attrition_rate
FROM `dataset_attrition_IBM.cleaned_attrition_data`
GROUP BY Department
ORDER BY attrition_rate DESC

      /*
      Row	Department	            total_employees	employees_left	attrition_rate
      1	  Sales	                  446	            92	            20.63
      2	  Human Resources	        63	            12	            19.05
      3	  Research & Development	961	            133	            13.84
      */   
