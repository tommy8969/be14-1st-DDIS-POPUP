select
    favorite_list.client_num, favorite_list.popup_post_num, popup.popup_name,popup.popup_content
from favorite_list
join popup on favorite_list.popup_post_num = popup.popup_post_num
where favorite_list.popup_post_num = popup.popup_post_num;
