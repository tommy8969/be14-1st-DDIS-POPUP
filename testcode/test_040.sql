select
    popup_name, popup_content, popup_start_date, popup_end_date, popup_status, popup_location1,popup_ticket_amount, popup_ticket_per_price, AVG(review_rating) as avg_review_rating
  from popup
join review  on review.popup_post_num = popup.popup_post_num group by review.popup_post_num
order by avg_review_rating desc;
