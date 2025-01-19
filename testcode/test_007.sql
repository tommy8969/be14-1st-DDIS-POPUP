## Test_007
-- 비밀번호 동일 입력 시 회원사진 추가 및 변경 가능
DELIMITER //

CREATE PROCEDURE update_client_img(
    IN input_id VARCHAR(255),
    IN input_pw VARCHAR(255),
    IN input_img_type VARCHAR(255),
    IN input_img_url VARCHAR(255)
)
BEGIN
    DECLARE db_num VARCHAR(255);

    START TRANSACTION;

    -- 입력받은 아이디와 비밀번호가 회원정보와 같을 경우 db_num에 client_num 값 저장
    SELECT client_num
    INTO db_num
    FROM client
    WHERE client_id = input_id AND client_pw = input_pw;

    -- client_img에 회원번호가 있으면 사진 정보 변경, 없으면 사진 정보 추가
    IF EXISTS(
         SELECT 1
           FROM client_img a
           JOIN client b ON a.client_img_num = b.client_num
          WHERE a.client_num = db_num
        ) THEN
         UPDATE client_img
            SET client_img_type = input_img_type,
                client_img_url = input_img_url
          WHERE db_num = client_num;
    ELSE
        INSERT
          INTO client_img
        (client_num, client_img_type, client_img_url)
        VALUES
        (db_num, input_img_type, input_img_url);

    END IF ;
END //

DELIMITER ;

-- 사진 업데이트 프로시저 호출
-- 1. 회원사진이 등록되어있는 회원일 경우
CALL update_client_img('jiyeong9', 'JiYo@ng1998', 'png', 'https://test/url.com');

-- 2. 회원사진이 등록되어있지 않은 회원일 경우
CALL update_client_img('duski77', 'dudu@77', 'jpeg', 'https://test/url.com');
