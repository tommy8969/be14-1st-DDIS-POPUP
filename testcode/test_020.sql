/*감소*/
drop procedure if exists minus_review_like;
DELIMITER //
CREATE PROCEDURE minus_review_like(
    IN review_num_param INT
)
BEGIN
    IF EXISTS (
        SELECT 1
        FROM review_like
        WHERE review_num = review_num_param
    ) THEN
        -- 리뷰 번호가 존재하면 좋아요 증가
        UPDATE review_like
        SET review_like_num = review_like_num - 1
        WHERE review_num = review_num_param;
    -- 조건부 업데이트
    END IF;

END //

DELIMITER ;

call minus_review_like(23);
