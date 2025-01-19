-- Test_046 : 티켓발급
-- 티켓코드생성함수
DELIMITER //
CREATE FUNCTION random_ticket_code()
    RETURNS VARCHAR(16)
    DETERMINISTIC
BEGIN
    DECLARE chars VARCHAR(36) DEFAULT 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    DECLARE result VARCHAR(16) DEFAULT '';
    DECLARE i INT DEFAULT 1;

    WHILE i < 16 DO
            SET result = CONCAT(result, SUBSTRING(chars, FLOOR(1 + RAND() * 36), 1));
            SET i = i + 1;
        END WHILE;

    RETURN result;
END //

DELIMITER ;

-- 결제 완료 시(결제내역 등록시) ticket 발급(ticket 테이블에 insert)
DELIMITER //

DROP TRIGGER if EXISTS giving_ticket_code;
CREATE TRIGGER giving_ticket_code
    AFTER insert
    ON pay
    FOR EACH row
BEGIN
    --    INSERT INTO ticket(pay_num, ticket_time)
--    VALUES (NEW.pay_num, NEW.pay_time);

    INSERT INTO ticket(ticket_code, pay_num, ticket_time, ticket_use)
    VALUES(random_ticket_code(), NEW.pay_num, new.ticket_time, 1);
    -- 티켓 발급 시 관람시각(tiket_time)이 현재시각(now())가 아니라 사용자가 선택한 시각으로 되어야하지않을까..?
    -- 결제(pay) 테이블에 관람시각이 추가되면 해결 가능???
END //

DELIMITER ;
