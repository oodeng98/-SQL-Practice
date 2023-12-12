SELECT CEIL(AVG(SALARY) - AVG(REPLACE(CAST(SALARY AS CHAR), "0", "")))
FROM EMPLOYEES

/*
CEIL함수는 올림 함수
숫자에서 0을 제거하고 싶으므로 REPLACE함수를 사용하고자 함
REPLACE함수는 문자열에서만 작동하므로 CAST함수로 숫자를 문자열로 변환
데이터 타입 변환 함수는 CAST와 CONVERT가 존재
의아한 점은 AVG함수 안에 REPLACE가 있으면 문자열로 들어갈텐데 AVG가 작동하는 점이 신기하다.
*/