SELECT
  APPROX_QUANTILES(MonthlyIncome, 4) AS salary_quartiles -- salary grouping
FROM `dataset_attrition_IBM.cleaned_attrition_data`

    /* Result
      Min   = 1009
      Q1    = 2909
      Median= 4908
      Q3    = 8268
      Max   = 19999
    */

  
SELECT
  CASE 
    WHEN MonthlyIncome <= 2909 THEN 'Low (<=2909)'
    WHEN MonthlyIncome <= 4908 THEN 'Mid-Low (2910-4908)'
    WHEN MonthlyIncome <= 8268 THEN 'Mid-High (4909-8268)'
    ELSE 'High (>8268)'
  END AS salary_group,

  COUNT(*) AS total_employees,
  COUNTIF(Attrition = TRUE) AS employees_left,
  ROUND(COUNTIF(Attrition = TRUE) / COUNT(*) * 100, 2) AS attrition_rate

FROM `dataset_attrition_IBM.cleaned_attrition_data`
GROUP BY salary_group
ORDER BY attrition_rate DESC


      # COMPANY attrition by salary_group
/*
Row	  salary_group	        total_employees	employees_left	attrition_rate (%)
1	    Low (<=2909)	        367	            108	             29.43
2	    Mid-Low (2910-4908)	  368	            52	             14.13
3	    Mid-High (4909-8268)	364	            39	             10.71
4	    High (>8268)	        371	            38	             10.24
*/
