/*좋아요 증가*/
drop procedure if exists add_review_like;
DELIMITER //
CREATE PROCEDURE add_review_like(
    IN review_num_param INT
)
BEGIN
        -- 존재 여부 확인
        IF EXISTS (
            SELECT 1
            FROM review_like
            WHERE review_num = review_num_param
        ) THEN
            -- 리뷰 번호가 존재하면 좋아요 증가
            UPDATE review_like
            SET review_like_num = review_like_num + 1
            WHERE review_num = review_num_param;
        ELSE
            -- 리뷰 번호가 없으면 새로운 좋아요 삽입
            INSERT INTO review_like (review_num, review_like_num)
            VALUES (review_num_param, 1);
        END IF;

END //

drop procedure if exists add_review_like;
DELIMITER ;

call add_review_like(23);

