## Test_001
-- 회원가입 시 회원정보(이름, 아이디, 비밀번호, 전화번호, 이메일, 성별, 생년월일, 닉네임) 저장 -> 계정상태 active DEFAULT
-- client_status의 default값을 active로 놓으면서 insert만 일어나면 됨.
INSERT
INTO client
(client_name, client_id, client_pw, client_phone, client_email
, client_gender, client_birth, client_nickname, client_type)
VALUES
    ('곽두식', 'duski77', 'dudu@77', '010-4687-9578', 'dudu77@naver.com'
    , '남', '1975-04-21', '두두', '회원');