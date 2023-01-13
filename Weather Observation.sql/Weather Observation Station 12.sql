Select Distinct CITY From STATION
Where CITY NOT RLIKE '^[aeiou]' AND CITY NOT REGEXP '[aeiou]$';