select name
from students
where marks > 75
order by right(name, 3), ID

/*
right(a, b) 함수는 a의 오른쪽 b개의 문자를 가져오는 함수
left(a, b) 함수 또한 존재한다.
*/