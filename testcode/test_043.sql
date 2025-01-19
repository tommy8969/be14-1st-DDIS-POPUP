-- Test_043 : 결제환불
-- 환불상태 바꿔
DELIMITER //

DROP TRIGGER if EXISTS switch_pay_return;
CREATE TRIGGER switch_pay_return
    AFTER insert
    ON refund
    FOR EACH ROW
BEGIN
    if NEW.pay_num = (SELECT pay_num FROM pay WHERE pay_num = NEW.pay_num) then
        UPDATE pay
        SET pay_return = 1
        WHERE pay_num = NEW.pay_num;
    END if;
END //

DELIMITER ;

SELECT
    a.refund_num AS '환불번호'
     , a.pay_num AS '결제번호'
     , a.refund_time AS '환불시각'
FROM refund a
         JOIN pay b ON a.pay_num = b.pay_num;

insert
  into refund
values
(null, 27, now());
