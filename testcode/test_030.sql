update
    popup
set popup_content = '프로젝트를 하다 점점 미쳐가고 있는 사람들이 모여있는 팝업'
where popup_post_num = 21;

DELIMITER //

drop procedure if exists update_popup;
DELIMITER //

CREATE PROCEDURE update_popup (
    IN popup_post_num_param INT,
    IN client_num_param INT,
    IN popup_name_param VARCHAR(255),
    IN popup_content_param VARCHAR(255),
    IN start_date TIMESTAMP,
    IN end_date TIMESTAMP,
    IN popup_post_upload_time_param TINYINT(1), -- TRUE면 upload_time 갱신
    IN popup_location1_param VARCHAR(255),
    IN popup_location2_param VARCHAR(255),
    IN popup_location3_param VARCHAR(255),
    IN popup_location4_param VARCHAR(255),
    IN popup_ticket_amount_param INT,
    IN popup_ticket_per_price_param INT
)
BEGIN
    -- 조건부 업데이트
    UPDATE popup
    SET
        popup_content = IF(popup_content_param IS NOT NULL, popup_content_param, popup_content),
        popup_name = IF(popup_name_param IS NOT NULL, popup_name_param, popup_name),
        popup_post_upload_time = IF(popup_post_upload_time_param = 1, NOW(), popup_post_upload_time),
        popup_ticket_amount = IF(popup_ticket_amount_param IS NOT NULL, popup_ticket_amount_param, popup_ticket_amount),
        popup_ticket_per_price = IF(popup_ticket_per_price_param IS NOT NULL, popup_ticket_per_price_param, popup_ticket_per_price),
        popup_post_check = FALSE
    WHERE
        (popup_start_date = start_date OR start_date IS NULL)
      AND (popup_end_date = end_date OR end_date IS NULL)
      AND (popup_post_num = popup_post_num_param OR popup_post_num_param IS NULL)
      AND (client_num = client_num_param OR client_num_param IS NULL)
      AND (popup_location1 = popup_location1_param OR popup_location1_param IS NULL)
      AND (popup_location2 = popup_location2_param OR popup_location2_param IS NULL)
      AND (popup_location3 = popup_location3_param OR popup_location3_param IS NULL)
      AND (popup_location4 = popup_location4_param OR popup_location4_param IS NULL);
      
END //

DELIMITER ;

CALL update_popup(
        21, -- popup_post_num
        NULL, -- client_num
        NULL, -- popup_name
        '프로젝트를 하다 다 못끝내고 다음날에도 미쳐가는 사람들의 모임', -- popup_content
        NULL, -- start_date
        NULL, -- end_date
        1,    -- popup_post_upload_time_param (TRUE)
        NULL, -- popup_location1
        NULL, -- popup_location2
        NULL, -- popup_location3
        NULL, -- popup_location4
        NULL, -- popup_ticket_amount
        NULL  -- popup_ticket_per_price
     );
