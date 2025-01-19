drop trigger if exists insert_post_q_comment;
delimiter //
create trigger insert_post_q_comment
    before insert
    on post_q_comment
    for each row
begin
    set new.post_q_comment_upload_time = now();

end //
delimiter ;
insert into post_q_comment(
         post_q_comment_content, post_q_num
)
values (
        '트리거가 잘돼서 축하드려요', 21
       );
