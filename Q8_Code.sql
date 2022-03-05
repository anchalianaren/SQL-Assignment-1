--Q.In which counties is the both father’s and mother’s race Asian?
select distinct (x.County_of_Residence),y.Mothers_Single_Race, x.Fathers_Single_Race
from  bigquery-public-data.sdoh_cdc_wonder_natality.county_natality_by_father_race x
left join  bigquery-public-data.sdoh_cdc_wonder_natality.county_natality_by_mother_race y
on x.County_of_Residence = y.County_of_Residence
where y.Mothers_Single_Race = "Asian" and x.Fathers_Single_Race = "Asian"
order by x.County_of_Residence asc 
