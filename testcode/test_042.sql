-- Test_042 : 결제진행
use popuptest;
select * from pay;
INSERT
  INTO pay
(pay_num, popup_post_num, pay_time, ticket_time, pay_price, pay_amount, pay_method, client_num, pay_return)
VALUES
(null, 20, NOW(), '2010-01-01', 60000, 2, 'credit_card', 20, 0); -- 예시....
--

SELECT
    a.pay_num AS '결제번호'
     , b.popup_post_num AS '팝업게시물번호'
     , a.pay_price AS '합계금액'
     , a.pay_amount AS '구매수량'
     , a.pay_method AS '결제수단'
     , a.client_num AS '회원번호'
     , a.pay_return AS '환불상태'
FROM pay a
         JOIN popup b ON a.popup_post_num = b.popup_post_num;
