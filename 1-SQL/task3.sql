-- All the details about the cities
SELECT * FROM CITY_DETAILS;

-- The temperatures in Odense on the day 05/07/1980. DATETIME column was changed to TIMESTAMP format for this to work
SELECT TEMP FROM CITY_WEATHER WHERE CITY = 'Odense' AND DATETIME BETWEEN '05-JUL-1980 12.00.00.00000 AM' AND '05-JUL-1980 11.50.00.00000 PM';

-- The dates and the wind speed when the wind direction was 100 in the city of Aalborg.
SELECT DATETIME, WINDSPEED FROM CITY_WEATHER WHERE CITY = 'Aalborg' AND WINDDIR = 100;

-- The name of all the cities and their respective populations.
SELECT CITY, POPULATION FROM CITY_DETAILS;

-- The name of cities that have had temperatures lower than -15 Celsius.

SELECT DISTINCT CITY FROM CITY_WEATHER WHERE TEMP < -15;

-- The latitude and longitude of cities that have temperatures lower than -15 Celsius.
SELECT DISTINCT CITY_DETAILS.LATITUDE, CITY_DETAILS.LONGITUDE FROM CITY_DETAILS, CITY_WEATHER WHERE CITY_DETAILS.CITY = CITY_WEATHER.CITY AND CITY_WEATHER.TEMP < -15;