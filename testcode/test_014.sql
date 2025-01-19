-- 2. 관리자 댓글신고관리
-- 신고된 댓글 확인 후 해당 회원의 신고누적횟수 1증가, 검토여부 True 변경
SELECT
    cr.comment_report_num 신고번호,
    cr.comment_report_content 신고내용,
    c.comment_content 댓글내용,
    c.client_num 회원번호,
    cl.client_name 이름,
    cl.client_report_cnt 신고누적횟수
FROM comment_report cr
         JOIN comment c ON cr.comment_num = c.comment_num
         join client cl on c.client_num = cl.client_num
where cr.comment_report_num = 1;-- 회원번호 1 확인

update client set client_report_cnt = 0 where client_num = 1;                           -- 신고누적횟수 초기화 0
select client_num, client_name, client_report_cnt from client where client_num = 1;     -- 회원번호 1 인 회원 신고누적횟수 확인 0

UPDATE comment_report cr
    JOIN comment c ON cr.comment_num = c.comment_num
    join client cl on c.client_num = cl.client_num
SET cr.comment_report_check = TRUE,
    cl.client_report_cnt = cl.client_report_cnt + 1
WHERE cr.comment_report_num = 1;

select client_num, client_name, client_report_cnt from client where client_num = 1;     -- 회원번호 1 인 회원 신고누적횟수 확인 1
select comment_report_check from comment_report where comment_report_num = 1;              -- 댓글신고번호 1인 검토 내역 확인 true

-- '
DELIMITER //
DROP TRIGGER update_client_status;

CREATE TRIGGER update_client_status
    AFTER UPDATE ON client
    FOR EACH ROW
BEGIN
    -- client_report_cnt가 5 이상인지 확인
    IF NEW.client_report_cnt >= 5 AND NEW.client_status != 'inactive' THEN
        -- 상태를 inactive로 변경
        UPDATE client
        SET client_status = 'inactive'
        WHERE client_num = NEW.client_num;
    END IF;
END;
//
