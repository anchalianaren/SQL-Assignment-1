--Q. In how many counties do Asian mothers pay with Medicaid?
select distinct (x.County_of_Residence), x.Mothers_Single_Race, y.Source_of_Payment
from  bigquery-public-data.sdoh_cdc_wonder_natality.county_natality_by_mother_race x
inner join  bigquery-public-data.sdoh_cdc_wonder_natality.county_natality_by_payment y
on x.County_of_Residence = y.County_of_Residence
where x.Mothers_Single_Race = "Asian" and y.Source_of_Payment = "Medicaid"
order by x.County_of_Residence asc

