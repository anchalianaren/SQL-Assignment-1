--Q. In how many Counties do White fathers pay with private insurance?
select distinct (x.County_of_Residence), x.Fathers_Single_Race, y.Source_of_Payment
from  bigquery-public-data.sdoh_cdc_wonder_natality.county_natality_by_father_race x
inner join  bigquery-public-data.sdoh_cdc_wonder_natality.county_natality_by_payment y
on x.County_of_Residence = y.County_of_Residence
where x.Fathers_Single_Race = "White" and y.Source_of_Payment = "Private Insurance"
order by x.County_of_Residence asc 

