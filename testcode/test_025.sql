insert into review_report(
    review_report_content, review_num, client_num
) VALUES (
    '이게 뭐야 속았네...',47, 5
);

select
    review_report_num, review_report_content, review_report_check, review_report.review_num, review_report.client_num as '신고자', review.client_num as '피신고자', popup_post_num, review_title
from review_report
join review on review_report.review_num = review.review_num;
