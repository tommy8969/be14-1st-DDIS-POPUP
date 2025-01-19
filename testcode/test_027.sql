select
      popup.popup_post_num, client_num,popup_name, popup_content, popup_start_date, popup_end_date, popup_status, popup_post_upload_time, popup_location1, popup_location2,popup_location3,popup_location4, popup_ticket_amount, popup_ticket_per_price, popup_post_check, popup.category_num,post_img.post_img_url
  from popup
  join category on popup.category_num = category.category_num
  join post_img on popup.popup_post_num = post_img.popup_post_num
where category_type = '음식/음료';
