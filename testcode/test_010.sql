SELECT
    *
FROM client
where client_certification = false;

UPDATE
    client
set client_certification = true
where client_certification = false; 
select * from client;
