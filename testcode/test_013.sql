-- 1. 관리자 리뷰신고관리
-- 신고된 리뷰 확인 후 해당 회원의 신고누적횟수 1증가, 검토여부 True 변경
-- 1-1) 신고누적횟수 +1 해도 될 것 같은 리뷰 보고 검토여부 True, 신고누적횟수 +1
SELECT
    rr.review_report_num 신고번호,
    rr.review_report_content 신고내용,
    r.review_title 리뷰제목,
    r.review_content 리뷰내용,
    r.review_rating 별점,
    c.client_num 회원번호,
    c.client_name 이름,
    c.client_report_cnt 신고누적횟수
FROM review_report rr
         JOIN review r ON rr.review_num = r.review_num
         join client c on r.client_num = c.client_num
WHERE rr.review_report_num = 1;                                                         -- 회원번호 9확인

select client_num, client_name, client_report_cnt from client where client_num = 9;     -- 회원번호 9인 회원 신고누적횟수 확인 0
select review_report_check from review_report where review_report_num = 1;              -- 리뷰신고번호 1인 검토 내역 확인 false

-- update review_report set review_report_check = false where review_report_num = 1;       -- 다시 검토 false로 되돌리기 위한 쿼리

UPDATE review_report rr
    JOIN review r ON rr.review_num = r.review_num
    JOIN client c ON r.client_num = c.client_num
SET rr.review_report_check = TRUE,
    c.client_report_cnt = c.client_report_cnt + 1
WHERE rr.review_report_num = 1;

select client_num, client_name, client_report_cnt, client_status from client where client_num = 9;     -- 회원번호 9인 회원 신고누적횟수 확인 1
select review_report_check from review_report where review_report_num = 1;              -- 리뷰신고번호 1인 검토 내역 확인 true


-- 1-2) 신고누적횟수 +1 안해도 될 것 같은 리뷰 보고 검토여부만 True로 변경
SELECT
    rr.review_report_num 신고번호,
    rr.review_report_content 신고내용,
    r.review_title 리뷰제목,
    r.review_content 리뷰내용,
    r.review_rating 별점,
    c.client_name as 이름
FROM review_report rr
         JOIN review r ON rr.review_num = r.review_num
         join client c on r.client_num = c.client_num
WHERE rr.review_report_num = 13;

UPDATE review_report
SET review_report_check = TRUE
WHERE review_report_num = 13;
