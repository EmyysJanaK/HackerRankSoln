SELECT CITY.name 
FROM CITY JOIN country on CITY.countrycode = country.code where country.continent = 'Africa';