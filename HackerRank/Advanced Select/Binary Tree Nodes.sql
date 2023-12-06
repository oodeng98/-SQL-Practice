SELECT N, CASE
    WHEN P IS null THEN "Root"
    WHEN N IN (SELECT DISTINCT(P) FROM BST) THEN "Inner"
    ELSE "Leaf"
    END
FROM BST
ORDER BY N;

/*
select문에서 서브쿼리를 사용하는 것이 중요했던 문제
select에서 서브쿼리를 사용할 땐 alias를 붙이지 않아도 오류가 생기지 않았다.
*/