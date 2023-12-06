select distinct(city)
from station
where city not regexp '^[aeiou]'

/*
regexp는 정규표현식을 사용하기 위한 연산자
^의 경우 시작하는 문자열을 찾는 용도
*/