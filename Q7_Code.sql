--Q. How many people are paying through Medicaid or Private Insurance for the Births?
select Count(Source_of_Payment) from bigquery-public-data.sdoh_cdc_wonder_natality.county_natality_by_payment where Source_of_Payment = "Medicaid" or Source_of_Payment ="Private Insurance"
