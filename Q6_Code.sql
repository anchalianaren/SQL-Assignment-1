--Q. In which counties is the father’s race White and the mother’s age is greater than 34? 
select distinct (County_of_Residence), Fathers_Single_Race, Ave_Age_of_Mother from bigquery-public-data.sdoh_cdc_wonder_natality.county_natality_by_father_race where Fathers_Single_Race = "White" and  Ave_Age_of_Mother > 34 order by County_of_Residence asc
