SELECT CASE
            WHEN (A + B <= C) OR (A + C <= B) OR (B + C <= A) THEN "Not A Triangle"
            WHEN (A = B) AND (B = C) THEN "Equilateral"
            WHEN (A = B) OR (B = C) OR (A = C) THEN "Isosceles"
            ELSE "Scalene"
            END
FROM TRIANGLES

/*
case when 문구를 사용해서 if문을 구현한다고 생각하자.
then으로 return값을 설정할 수 있고, else로 나머지 값을 처리할 수 있다.
case문은 end로 끝나야 한다.
*/