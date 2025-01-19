## Test_002
-- 회원가입 시 회원정보(사업자명, 이름, 아이디, 비밀번호, 전화번호, 이메일) 저장 -> 인증상태 False DEFAULT
-- client_certification의 default값을 False로 놓으면서 insert만 일어나면 됨.
INSERT
INTO client
(client_brand, client_name, client_id, client_pw
, client_phone, client_email, client_type)
VALUES
    ('(주)으리으리', '박점철', 'loyal123'
    , 'jum@loyal12', '010-6273-4631'
    , 'loyal123@gmail.com', '운영자');
