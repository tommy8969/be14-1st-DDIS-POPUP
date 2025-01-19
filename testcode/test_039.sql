select
    popup.popup_name, review.review_title, review_content, review_rating, review_img.review_img_url
from popup
join review on review.popup_post_num = popup.popup_post_num
join review_img on review.review_num = review_img.review_num
where review.popup_post_num = popup.popup_post_num;
