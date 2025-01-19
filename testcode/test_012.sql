SELECT
     *
    FROM popup
where popup_post_check = false;

UPDATE
     popup
set popup_post_check = true
where popup_post_check = false;

select * from popup;
