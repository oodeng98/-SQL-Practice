SELECT DISTINCT(CITY)
FROM STATION
WHERE CITY LIKE 'a%' OR CITY LIKE 'e%' OR CITY LIKE 'i%' OR CITY LIKE 'o%' OR CITY LIKE 'u%';

/*
like는 문자열의 패턴을 검색하는 용도
%은 모든 문자, _는 한 글자를 의미한다.
만약 a로 시작하는 3글자로 구성된 단어를 찾고 싶다면 like "a__"를 사용하면 된다.
*/