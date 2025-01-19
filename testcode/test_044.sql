-- Test_044 : 거래내역조회
-- 수정사항 환불상태가 1일때 합계금액 음수 표시
SELECT
    b.popup_name AS '팝업명'
     , a.pay_time AS '결제시각'
     ,  CASE
            WHEN a.pay_return = 1 THEN CONCAT('-', a.pay_price)
            ELSE a.pay_price
        END as '합계금액'
     , a.pay_amount AS '구매수량'
     , a.pay_method AS '결제수단'
FROM pay a
         JOIN popup b ON a.popup_post_num = b.popup_post_num
WHERE a.client_num = 20;
