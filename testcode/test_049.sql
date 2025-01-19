-- Test_049 : 문의사항 답변수정
UPDATE admin_q_comment
SET admin_q_comment_time = NOW(), admin_q_comment_content = '감사합니다람쥐' -- 예시
WHERE admin_q_comment_content = '안농하십니까마귀';
-- "관리자 번호" 가 없으니까 한 관리자가 작성한 답변을 조회할 수 없음 -> 답변 내용으로 찾기..
