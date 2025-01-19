insert into comment_report(
    comment_report_content, comment_num, client_num
) VALUES (
          '욕쟁이 할머니 인줄 알았어요', 4 , 2
         );

select
    comment_report_content, comment_report_check, comment.comment_num,comment_report.client_num as '신고자', comment.client_num as '피신고자', comment.comment_content
from comment_report
join comment on comment_report.comment_num = comment.comment_num
where comment_report.comment_num = comment.comment_num;
