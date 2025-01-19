## Test_004
-- 회원 이름과 회원 이메일 동일 입력 시 회원 ID 조회
DELIMITER //

CREATE PROCEDURE search_client_id (
    IN input_name VARCHAR(255),
    IN input_email VARCHAR(255)
)
BEGIN
    DECLARE db_id VARCHAR(255);

    START TRANSACTION;

    -- 입력받은 이름과 이메일이 회원정보와 같을 경우 db_id에 client_id 값 저장
    SELECT client_id
      INTO db_id
      FROM client
     WHERE client_name = input_name AND client_email = input_email;

    -- db_id에 값이 있다면 db_id 값 출력
    IF db_id IS NOT NULL THEN
        SELECT CONCAT('ID : ', db_id);
    ELSE
        SELECT '이름과 이메일을 확인해주세요.';
    END if;
END //

DELIMITER ;

-- 아이디찾기 프로시저 호출
-- 1. 입력한 아이디와 이메일이 회원정보와 일치할 경우
CALL search_client_id('한지민', 'idollstar@enterpop.com');

-- 2. 입력한 아이디와 이메일이 회원정보와 일치하지 않을 경우
CALL search_client_id('김삥삥', 'bbang@okggi.com');
