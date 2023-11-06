
select count(*) from ProjectPortfolio..covidvaccined

select location, cast(total_cases as float)/total_deaths as deathsrate
 from ProjectPortfolio..[covid-deaths]

 select round(avg(cast(total_deaths as float)),3) from ProjectPortfolio..[covid-deaths]

 select sum(cast(total_cases as float)) from ProjectPortfolio..[covid-deaths]

 select location, sum(cast(total_cases as float)) as totalcases
 from ProjectPortfolio..[covid-deaths]
 where location != 'Europe'
 group by location
having sum(cast(total_cases as float)) > 1000000000
 order by totalcases desc