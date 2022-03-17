'''
관리자의 실수로 일부 동물의 입양일이 잘못 입력되었습니다. 
보호 시작일보다 입양일이 더 빠른 동물의 아이디와 이름을 조회하는 SQL문을 작성해주세요. 
이때 결과는 보호 시작일이 빠른 순으로 조회해야합니다.

<해설>
입양 IN정보와 입양 OUT 정보를 연결 : INNER JOIN (KEY = ANIMAL_ID)
보호시작일(ANIMAL_INS.DATETIME)보다 입양일(ANIMAL_OUTS.DATETIME)이 더 빠른 동물 
조건 ANIMAL_INS.DATETIME > ANIMAL_OUTS.DATETIME
보호시작일이 빠른 순으로 출력 : ORDER BY

'''

SELECT I.ANIMAL_ID, I.NAME
FROM ANIMAL_INS I INNER JOIN ANIMAL_OUTS O
ON I.ANIMAL_ID = O.ANIMAL_ID
AND I.DATETIME > O.DATETIME
ORDER BY I.DATETIME
