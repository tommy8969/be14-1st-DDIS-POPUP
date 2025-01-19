DELIMITER //

CREATE PROCEDURE update_post_q_auto (
    IN post_q_num_param INT,       -- post_q_num
    IN client_num_param INT,       -- client_num
    IN popup_post_num_param INT,   -- popup_post_num
    IN new_content TEXT,           -- content: NULL이면 수정 안 함
    IN update_time BOOLEAN         -- TRUE면 upload_time 갱신
)
BEGIN
    -- 조건부 업데이트
    UPDATE post_q
    SET
        post_q_content = IF(new_content IS NOT NULL, new_content, post_q_content),
        post_q_upload_time = IF(update_time, NOW(), post_q_upload_time)
    WHERE
        (post_q_num = post_q_num_param OR post_q_num_param IS NULL)
      AND (client_num = client_num_param OR client_num_param IS NULL)
      AND (popup_post_num = popup_post_num_param OR popup_post_num_param IS NULL);
END //

DELIMITER ;



call update_post_q_auto(21,null,null,'프로시져 이렇게 쓰는건가?',true);

