Q. In which county is the average age of mother the minimum and what is the minimum age?
select Ave_Age_Of_Mother, County_of_Residence from bigquery-public-data.sdoh_cdc_wonder_natality.county_natality where Ave_Age_Of_Mother = (select min (Ave_Age_Of_Mother)from bigquery-public-data.sdoh_cdc_wonder_natality.county_natality);
