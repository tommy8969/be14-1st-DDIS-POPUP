/*리뷰 작성*/

drop procedure if exists InsertReview;
DELIMITER //
CREATE PROCEDURE InsertReview()

BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
        BEGIN
            ROLLBACK;
        END;

    START TRANSACTION ;
    INSERT INTO review(review_num, client_num, popup_post_num,review_title, review_content,review_upload_time,review_rating)
    VALUES (101,5,1,'친절한 운영진들 덕에 재밌었습니다','요리하는건 항상 어려운데 이번에 체험들이 간단하고 쉬워서 재밌었어요',NOW(),5);


    INSERT INTO review_img(review_img_name,review_num, review_img_rename, review_img_type, review_img_url)
    VALUES ('reviewimg101.jpg',101,'reviewimg101_rename.jpg','jpg','https:/example.com/review_img_101.jpg');

    COMMIT;
END //

DELIMITER ;

call InsertReview();
