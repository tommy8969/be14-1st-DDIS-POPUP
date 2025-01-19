DELIMITER //

CREATE PROCEDURE check_ticket_use()
BEGIN
    -- ticket 테이블에서 각 티켓의 ticket_time과 비교하여 사용 여부 업데이트
    update ticket a
    join pay b on a.pay_num = b.pay_num
    join popup c on b.popup_post_num = c.popup_post_num

    SET a.ticket_use = if(a.ticket_time < now(), 0, a.ticket_use)
    where a.ticket_use = 1;

    -- CASE
                         --  WHEN a.ticket_time > NOW() then 1 -- 현재 시간보다 미래이면 사용 가능
                         -- when a.ticket_time < c.popup_end_date then 1

                        -- ELSE 0  -- 과거 시간일 경우 사용 불가

END//

DELIMITER ;

CALL check_ticket_use();

-- 선택한 사용자가 결제한 티켓 조회
SELECT
    c.popup_name AS '팝업명'
     , b.pay_price AS '결제금액'
     , a.ticket_time AS '관람시각'
     , a.ticket_code AS '티켓번호'
     , a.ticket_use AS '사용가능여부'
FROM ticket a
         JOIN pay b ON a.pay_num = b.pay_num
         JOIN popup c ON b.popup_post_num = c.popup_post_num
WHERE b.client_num = 20;
