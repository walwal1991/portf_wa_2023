select * from CovidDeath
order by 3,4

select * from CovidVaccination
order by 3,4

--select data that we are going to be using

select location,date,total_cases,new_cases,total_deaths from CovidDeath
order by 1,2
--(cast(total_deaths as int)*100)/cast(total_cases as int) as death_percentage
--looking at total cases vs total deaths 
select location,date,total_cases,total_deaths,total_deaths *100/cast (total_cases as decimal) as death_percentage from CovidDeath
order by 1,2
