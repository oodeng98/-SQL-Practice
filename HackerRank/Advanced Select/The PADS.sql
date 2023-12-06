SELECT CONCAT(NAME, "(", LEFT(OCCUPATION, 1), ")")
FROM OCCUPATIONS
ORDER BY NAME;

SELECT CONCAT("There are a total of ", COUNT(OCCUPATION), " ", LOWER(OCCUPATION), "s.")
FROM OCCUPATIONS
GROUP BY OCCUPATION
ORDER BY COUNT(OCCUPATION)

/*
concat으로 문자열을 연결할 수 있다.
문자열이 아니라 숫자의 형태로 입력되어도 상관없다.
lower(a)는 문자열 a를 다 소문자로 바꿔준다.
upper(a)는 다 대문자로 바꿔준다.
*/