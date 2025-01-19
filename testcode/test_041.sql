select
    popup_name, popup_content, popup_start_date, popup_end_date, popup_status, popup_location1,popup_ticket_amount, popup_ticket_per_price, count(favorite_list.popup_post_num)
from popup
join favorite_list on popup.popup_post_num = favorite_list.popup_post_num group by favorite_list.popup_post_num
order by count(favorite_list.popup_post_num) desc;
