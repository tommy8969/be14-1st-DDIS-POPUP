/*리뷰 수정*/
DELIMITER //
CREATE PROCEDURE update_review (
    IN review_num_param INT,       -- post_q_num
    IN client_num_param INT,       -- client_num
    IN popup_post_num_param INT,   -- popup_post_num
    IN new_content varchar(255),           -- content: NULL이면 수정 안 함
    IN update_time BOOLEAN         -- TRUE면 upload_time 갱신
)
BEGIN
    -- 조건부 업데이트
    UPDATE review
    SET
        review_content = IF(new_content IS NOT NULL, new_content, review_content),
        review_upload_time = IF(update_time, NOW(), review_upload_time)
    WHERE
        (popup_post_num = popup_post_num_param OR popup_post_num_param IS NULL)
      AND (client_num = client_num_param OR client_num_param IS NULL)
      AND (review_num = review_num_param OR review_num_param IS NULL);
END //

DELIMITER ;

call update_review(101,null,null,'수정에 수정에 수정에 수정', true);
