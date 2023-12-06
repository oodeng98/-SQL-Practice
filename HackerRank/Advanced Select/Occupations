SELECT MAX(Doctor),Max(Professor),MAX(Singer),Max(Actor)
FROM (
    SELECT *, 
        CASE WHEN (OCCUPATION = "Doctor") THEN NAME END AS Doctor,
        CASE WHEN (OCCUPATION = "Professor") THEN NAME END AS Professor,
        CASE WHEN (OCCUPATION = "Singer") THEN NAME END AS Singer,
        CASE WHEN (OCCUPATION = "Actor") THEN NAME END AS Actor, 
        ROW_NUMBER() OVER (PARTITION BY OCCUPATION ORDER BY NAME) AS RW
    FROM OCCUPATIONS
    ) A
GROUP BY RW

/*
select 문 안에 select문이 또 있는 경우를 서브쿼리(SubQuery)라고 한다.
서브쿼리를 만들고 꼭 이름(alias)을 붙여줘야 에러가 생기지 않는다.

이 문제의 경우 pivot을 구현하는 문제이다.
doctor, professor, singer, actor의 column을 만들어주고
row_number()를 활용해서 각 row에 번호를 붙여준다.
그 과정에서 미리 select한 occupation column을 활용해서 partition by과정을 거친다.
이렇게 하면, 모든 row 기준이 아닌 각 column별 row로 번호가 새겨지게 되며, 이를 group by를 통해 압축해서 보게 된다.
max를 사용해도 모든 row를 볼 수 있는 이유는, max의 기준은 row_number이며, 각각의 column에 고유한 row_number가 존재하기 때문에
값을 통합하는 역할을 하기 때문이다.
*/