-- Test_045 : 판매내역조회
SELECT
    b.popup_name AS '팝업이름',
    SUM(a.pay_amount) AS '판매수량',
    SUM(a.pay_price) AS '합계금액'
  FROM pay a
  JOIN popup b ON a.popup_post_num = b.popup_post_num
 WHERE b.popup_post_num = 15;
