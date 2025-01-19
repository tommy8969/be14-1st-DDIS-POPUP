/*진행 상태별 팝업게시물 조회*/
select
    popup.popup_post_num, client_num,popup_name, popup_content, popup_start_date, popup_end_date, popup_status, popup_post_upload_time, popup_location1, popup_location2,popup_location3,popup_location4, popup_ticket_amount, popup_ticket_per_price, popup_post_check, popup.category_num,post_img.post_img_url
  from popup
  join post_img on popup.popup_post_num = post_img.popup_post_num
  where popup_status = '마감';
