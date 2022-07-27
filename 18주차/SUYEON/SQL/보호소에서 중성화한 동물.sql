SELECT A.ANIMAL_ID,A.ANIMAL_TYPE, A.NAME
FROM ANIMAL_INS A
JOIN ANIMAL_OUTS B ON A.ANIMAL_ID=B.ANIMAL_ID
WHERE A.SEX_UPON_INTAKE LIKE 'INTACT%'
AND (B.SEX_UPON_OUTCOME LIKE 'SPAYED%'
OR B.SEX_UPON_OUTCOME LIKE 'NEUTERED%')
ORDER BY A.ANIMAL_ID
# LIKE, '%'를 사용하여 검색하려는 문자열이 있는지 확인하여 출력

SELECT I.ANIMAL_ID, I.ANIMAL_TYPE,I.NAME 
FROM ANIMAL_INS AS I 
LEFT JOIN ANIMAL_OUTS AS O ON I.ANIMAL_ID  = O.ANIMAL_ID 
WHERE I.SEX_UPON_INTAKE != O.SEX_UPON_OUTCOME
ORDER BY I.ANIMAL_ID