DELIMITER //

CREATE TRIGGER coment_report_client_type
    AFTER UPDATE ON comment_report
    FOR EACH ROW
BEGIN
    -- 신고가 검토 완료되었고, 해당 회원의 client_report_cnt가 5 이상인지 확인
    IF NEW.comment_report_check = TRUE THEN
        -- 신고 대상 회원의 client_report_cnt가 5 이상이면
        IF (SELECT client_report_cnt
            FROM client
            WHERE client_num = NEW.client_num) >= 5 THEN
            -- 상태가 이미 inactive가 아닐 경우에만 업데이트
            IF (SELECT client_status FROM client WHERE client_num = NEW.client_num) != 'inactive' THEN
                UPDATE client
                SET client_status = 'inactive'
                WHERE client_num = NEW.client_num;
            END IF;
        END IF;
    END IF;
END;
//
