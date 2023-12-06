select distinct(city)
from station
where city not regexp '[aeiou]$'

/*
정규표현식에서 $는 끝나는 문자열을 찾는 용도
*/