-- Test_051 : 문의사항 답변조회
SELECT
    a.admin_q_comment_num AS '작성자'
     , a.admin_q_comment_time AS '등록시각'
     , a.admin_q_comment_content AS '답변내용'
FROM admin_q_comment a
         JOIN client b ON a.client_num = b.client_num; 

