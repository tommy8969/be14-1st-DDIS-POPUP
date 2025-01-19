drop trigger if exists insert_comment;
delimiter //
create trigger insert_comment
    before insert
    on comment
    for each row
begin
    set new.comment_upload_time = now();

end //
delimiter ;

insert
  into comment
(
    review_num, client_num, comment_content
)
values(
       14, 13,'다다익성 최고'
      );
