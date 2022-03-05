--Q. In which counties is the average age of mother less than 24 and they have congenital abnormalities?
select distinct (County_of_Residence), Ave_Age_of_Mother from  bigquery-public-data.sdoh_cdc_wonder_natality.county_natality_by_congenital_abnormalities where Ave_Age_of_Mother<=24 order by County_of_Residence asc 
