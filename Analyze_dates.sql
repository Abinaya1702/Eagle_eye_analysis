//sql queries to analyze dates table
//Abinaya Elanchezhian

//Display all rows where daynumberofweek is greater than 3 
select * from dates where daynumberofweek>='3'

//Display only datekey and spanishdaynameofweek where daynumberofweek is greater than 3 
select datekey, spanishdaynameofweek from dates where daynumberofweek>='3'

//Display min and max datekeys
select min(dates.datekey), max(dates.datekey) from date

//cross join for dates and employees table
//cross join combines each row in the first table with each row in the second table
select dates.datekey, employees.startdate, employees.enddate, count(1)
from employees cross join dates 
where dates.datekey between employees.startdate and employees.enddate
group by dates.datekey, employees.startdate, employees.enddate
order by dates.datekey ASC