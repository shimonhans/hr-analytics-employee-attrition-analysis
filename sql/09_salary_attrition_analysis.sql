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
