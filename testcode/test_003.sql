## Test_003
-- 회원 탈퇴 진행(비밀번호 동일 입력 시) 해당 계정 및 연동된 정보(팝업게시물, 리뷰, 댓글, 신고, 결제, 문의) 삭제
DELIMITER //

CREATE PROCEDURE client_resign (
    IN input_id VARCHAR(255),
    IN input_pw VARCHAR(255)
)
BEGIN
    DECLARE db_pw VARCHAR(255);

    START TRANSACTION;

    -- 입력받은 아이디로 비밀번호 가져오기
    SELECT client_pw
      INTO db_pw
      FROM client
     WHERE client_id = input_id;

    -- 입력한 비밀번호가 일치하면 회원정보 삭제
    IF db_pw = input_pw THEN
        DELETE FROM client
        WHERE client_id = input_id;
        COMMIT;
    ELSE
        SELECT '비밀번호를 확인해주세요.';
        ROLLBACK;
    END IF;
END //

DELIMITER ;

-- 회원탈퇴 프로시저 호출
-- 1. 입력한 아이디와 비밀번호가 회원정보와 일치할 경우
CALL client_resign('minsu123', 'Min$u2023!');
-- 2. 입력한 아이디와 비밀번호가 회원정보와 일치하지 않을 경우
CALL client_resign('minsu123', 'Min$');
