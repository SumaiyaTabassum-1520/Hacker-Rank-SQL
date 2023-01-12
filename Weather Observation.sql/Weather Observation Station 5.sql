(Select city , length(city)
From STATION
Order by length(city)Asc, city Asc limit 1)
Union 
(Select city,length(city)
From STATION
Order by length(city)Desc, city Asc limit 1);