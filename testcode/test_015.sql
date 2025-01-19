/*리뷰 조회*/
-- 카테고리 별 리뷰 조회시 해당하는 카테고리 번호의 리뷰가 조회됨.
SELECT
       category_type
     , review_title
     , review_content
     , review_upload_time
     , review_rating
     , review_img_url
FROM review
         JOIN review_img ON review.review_num = review_img.review_num
         JOIN popup on review.popup_post_num = popup.popup_post_num
        JOIN category on popup.category_num = category.category_num
where category.category_num = 1;
