## Test_005 
-- 회원정보 (이름, 아이디, 비밀번호, 전화번호, 이메일, 성별, 생년월일, 닉네임) 수정
DELIMITER //

CREATE PROCEDURE update_client_info(
    IN input_id VARCHAR(255),
    IN input_pw VARCHAR(255),
    IN input_new_name VARCHAR(255),
    IN input_new_id VARCHAR(255),
    IN input_new_pw VARCHAR(255),
    IN input_new_phone VARCHAR(255),
    IN input_new_email VARCHAR(255),
    IN input_new_gender VARCHAR(255),
    IN input_new_birth VARCHAR(255),
    IN input_new_nickname VARCHAR(255)
)
BEGIN
    IF EXISTS(
        SELECT 1
          FROM client
         WHERE client_id = input_id AND client_pw = input_pw
    ) THEN
        UPDATE client
           SET client_name = IF(input_new_name IS NOT NULL AND input_new_name != '', input_new_name, client_name),
               client_id = IF(input_new_id IS NOT NULL AND  input_new_id != '', input_new_id, client_id),
               client_pw = IF(input_new_pw IS NOT NULL AND input_new_pw != '', input_new_pw, client_pw),
               client_phone = IF(input_new_phone IS NOT NULL AND input_new_phone != '', input_new_phone, client_phone),
               client_email = IF(input_new_email IS NOT NULL AND  input_new_email != '', input_new_email, client_email),
               client_gender = IF(input_new_gender IS NOT NULL AND input_new_gender != '', input_new_gender, client_gender),
               client_birth = IF(input_new_birth IS NOT NULL AND input_new_birth != '', input_new_birth, client_birth),
               client_nickname = IF(input_new_nickname IS NOT NULL AND input_new_nickname != '', input_new_nickname, client_nickname)
         WHERE client_id = input_id AND client_pw = input_pw;
        SELECT '회원정보가 수정되었습니다.';
    ELSE
        SELECT '아이디와 비밀번호를 확인해주세요.';
    END IF ;
END;

DELIMITER ;

-- 회원정보 수정 프로시저 호출
-- 입력한 이름만 변경되고 입력을 하지 않은 나머지는 값 유지
CALL update_client_info('minsu123', 'Min$u2023!', '김삥삥','','','','','','','');
