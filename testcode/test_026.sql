select
    review_like_num, review_title, review_content, popup.popup_name
from review_like

join review on review_like.review_num = review.review_num
join popup on review.popup_post_num = popup.popup_post_num
order by review_like_num desc;
