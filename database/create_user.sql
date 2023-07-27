-- 사용자 생성
create user spring identified by oracle;

-- 연결 포함된 ROLE
GRANT connect TO spring;

-- CREATE와 관련된 내용 포함한 ROLE
GRANT resource TO spring;

-- 용량을 무제한으로 사용할 수 없게 함
GRANT
    UNLIMITED TABLESPACE
TO spring;