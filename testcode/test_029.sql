INSERT into popup
(
  client_num, popup_name, popup_content, 
  popup_start_date, popup_end_date, popup_status,popup_post_upload_time, 
  popup_location1, popup_location2,popup_location3,popup_location4, 
  popup_ticket_amount, popup_ticket_per_price, category_num
) values
(
  17, 
  '다다익성 컴퍼니', 
  '다양한 성을 가진 지성인들이 모인 팝업', 
  '2025-01-06 00:00:00', 
  '2025-01-08 00:00:00', 
  '진행 전',
  now(),
  '서울특별시',
  '영등포구', 
  '대방로',
  '신길동 123-25',
  200,
  23000,
  2
);
