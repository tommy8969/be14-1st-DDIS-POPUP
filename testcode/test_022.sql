DELIMITER //
CREATE PROCEDURE update_comment (
    IN comment_num_param INT,       -- post_q_num
    IN review_num_param INT,       -- client_num
    IN client_num_param INT,   -- popup_post_num
    IN new_content varchar(255),           -- content: NULL이면 수정 안 함
    IN update_time BOOLEAN         -- TRUE면 upload_time 갱신
)
BEGIN
    -- 조건부 업데이트
    UPDATE comment
    SET
        comment_content = IF(new_content IS NOT NULL, new_content, comment_content),
        comment_upload_time = IF(update_time, NOW(), comment_upload_time)
    WHERE
        (comment_num = comment_num_param OR comment_num_param IS NULL)
      AND (client_num = client_num_param OR client_num_param IS NULL)
      AND (review_num = review_num_param OR review_num_param IS NULL);
END //

DELIMITER ;

call update_comment(21,null,null,'프로시져 수정 다다익성 최고',true);
