# POP UP! 팝업스토어 티켓 결제 대행 서비스
![배너](./images/다다익성_팝업배너.png)


---

### 👥 Meet the **다다익姓(성)** Team Members

<center>

|<img src="./images/윤상.png" width="150" height="150"/>|<img src="./images/도은.png" width="160" height="150"/>|<img src="./images/도연.png" width="160" height="150"/>|<img src="./images/기종.png" width="150" height="150"/>|<img src="./images/성준.png" width="150" height="150"/>|<img src="./images/아현.png" width="150" height="150"/>|
|:-:|:-:|:-:|:-:|:-:|:-:|
|한윤상<br/>[@tommy8969](https://github.com/tommy8969)|강이도은<br/>[@RKDLDE](https://github.com/RKDLDE)|고도연<br/>[@ddxyxxn](https://github.com/ddxyxxn)|김기종<br/>[@rrangeess](https://github.com/rrangeess)|이성준<br/>[@1214alex](https://github.com/1214alex)|주아현<br/>[@Jooahyeon](https://github.com/Jooahyeon)|


</center>


## 목차 
1. [개요](#Project-Overview)    
2. [주요기능](#Main-Functionalities)
3. [WBS](#WBS)
4. [모델링](#DB-Modeling)
5. [요구사항명세서](#Software-Requirement-Specification)
6. [테스트케이스](#Test-Case)
7. [기술 스택](#Tech-Stack)  
8. [라이센스](#License)
9. [동료 평가](#Team-Assessments)


## Project Overview
---
### POP UP!
> 쉽고 빠른 POPUP STORE 운영, 이제 우리의 서비스와 함께하세요! 
POPUP STORE는 단기간 동안 특정 제품이나 브랜드를 홍보하기 위해 열리는 소규모 매장으로, 최근 독창적인 마케팅 전략으로 주목받고 있습니다. 그러나 성공적인 POPUP STORE 운영에는 체계적인 홍보와 결제 시스템이 필수입니다. 우리의 플랫폼은 이러한 니즈를 완벽히 충족하는 올인원 솔루션을 제공합니다.
---
### 📌 Project Necessity

![뉴스](./images/다다익성_뉴스1.png)   
 [**POPUP스토어의 인기 상승**](https://www.ohmynews.com/NWS_Web/View/at_pg.aspx?CNTN_CD=A0003017623) 




1️⃣ POPUP STORE 운영의 복잡성 해결 및 체계적인 관리 필요

POPUP STORE는 짧은 시간 동안 효과적인 마케팅을 위해 운영되며, 홍보, 결제, 사용자 리뷰 관리 등 다양한 요소를 종합적으로 다뤄야 합니다. 그러나 많은 사업자들이 각각의 요소를 별도로 관리해야 하는 상황에서 운영 효율성이 떨어지고 있습니다. 이에 따라, 한 번에 모든 기능을 관리할 수 있는 올인원 솔루션이 필요한 상황입니다.


2️⃣ 사용자 리뷰와 결제 시스템을 통한 신뢰성 확보 및 매출 증대 필요 

사용자 리뷰와 추천은 소비자 신뢰를 얻고 마케팅 효과를 극대화하는 데 중요한 역할을 합니다. 또한, 빠르고 편리한 결제 시스템은 소비자 경험을 개선하고 결제 과정에서의 불편을 최소화하는 데 필수적입니다. 이에 POPUP STORE의 짧은 운영 기간 동안 긍정적인 사용자 경험을 제공하고, 결제 시스템의 효율성을 보장하여 매출 증가를 이끌 수 있도록 지원합니다.

---
### 💡 Differentiation Strategy
-  팝업 운영자가 게시글을 등록하고 직접 관리하며, 사용자는 이를 통해 실시간으로 팝업 정보를 확인할 수 있는 양방향 소통 플랫폼입니다.

- 사용자는 팝업 정보를 열람하면서 티켓 구매까지 한 번에 진행할 수 있어 편의성을 극대화합니다.

- 팝업에 참여한 사용자만 리뷰와 별점을 남길 수 있어 신뢰도 높은 후기를 제공합니다.

- 댓글을 통해 사용자와 팝업 운영자가 실시간으로 팝업의 분위기와 만족도 등 정보를 자유롭게 공유할 수 있습니다.

---

## Main Functionalities

- 팝업 운영자는 게시물을 등록하여 팝업을 홍보하고 티켓을 판매할 수 있습니다.

- 사용자는 다양한 팝업 정보를 확인하며, 티켓 구매 및 리뷰와 별점을 통해 자신의 반응을 남길 수 있습니다

---

## 📋 Role-based Functionalities

### 1️⃣ 회원

1. 회원정보(이름, 비밀번호, 전화번호 등)를 **등록**하여 회원가입을 할 수 있습니다.
2. 회원은 아이디와 비밀번호로 **로그인**할 수 있습니다.
3. 회원은 자신이 작성한 리뷰와 댓글을 **조회**하고 관리할 수 있습니다.
4. 팝업을 **관심 목록에 추가**하거나 조회할 수 있습니다.
5. 결제를 진행하고, 결제 내역을 **확인**할 수 있습니다.
6. 팝업 티켓을 구매한 팝업 티켓 정보를 **조회**할 수 있습니다.
7. 작성한 리뷰를 **수정**하거나 **삭제**할 수 있습니다.
8. 작성한 댓글을 **수정**하거나 **삭제**할 수 있습니다.
9. 팝업 리뷰 및 댓글에 **좋아요**를 누르거나 **취소**할 수 있습니다.
10. 부적절한 리뷰나 댓글을 **신고**할 수 있습니다.

### 2️⃣ 팝업 운영자

1. 팝업 관련 정보를 **등록**하고 관리할 수 있습니다.
2. 사용자들의 리뷰와 피드백을 **조회**할 수 있습니다.
3. 팝업에 대한 문의사항에 **답변을 등록**하거나 수정 및 삭제할 수 있습니다.
4. 자신의 팝업 관련 매출 정보를 **조회**할 수 있습니다.
5. 자신의 아이디와 비밀번호로 **로그인**할 수 있다.
6. 사용자들의 관심 목록 데이터를 확인하여 인기 팝업을 **분석**할 수 있습니다.
7. 팝업의 리뷰 게시물을 **관리**하고 신고할 수 있습니다.
8. 운영 중인 팝업의 티켓 판매 정보를 **확인**할 수 있습니다.
9. 팝업 게시물 내용을 수정 요청하거나 **삭제 요청**할 수 있습니다.
10. 등록된 문의사항에 대한 **답변**을 달거나 변경할 수 있습니다.

### 3️⃣ 관리자

1. 블랙리스트에 등록된 사용자를 **조회**하고 관리할 수 있습니다.
2. 사용자 계정에 문제가 있을 경우 **이용을 제한**할 수 있습니다.
3. 팝업 운영자의 등록 요청을 **승인하거나 반려**할 수 있습니다.
4. 팝업 게시물과 관련된 모든 정보를 **검토**하고 **승인**할 수 있습니다.
5. 전체 리뷰 및 댓글에 대한 신고 사항을 **검토**하여 조치를 취할 수 있습니다.
6. 시스템 내 모든 계정에 대한 **권한 관리**를 수행할 수 있습니다.
7. 매출 및 결제 데이터를 **조회**하고 백업 또는 복구 작업을 수행할 수 있습니다.
8. 중요한 공지사항을 작성하고 상단에 **고정**할 수 있습니다.
9. 시스템 유지보수를 위해 로그 데이터를 **모니터링**할 수 있습니다.
10. 사용자 및 운영자와의 문의사항을 **관리**하고 답변을 등록하거나 삭제할 수 있습니다.

---  

## WBS
- [**WBS**](https://docs.google.com/spreadsheets/d/1FECp_2-KM5WJWsJPxP18FmI2iZUmJD9ua9gwpqeq48A/edit?usp=sharing)  
  
![WBS](./images/WBS.jpg)  

---  

## DB Modeling
### 1️⃣ Flowchart
![플로우차트이미지](./images/다다익성_플로우차트.png)


### 2️⃣ Conceptual Modeling (Use Case)
![개념이미지](./images/다다익성_유스케이스.jpg)


### 3️⃣ Logical Modeling
![논리이미지](./images/다다익성_논리모델링.png)


### 4️⃣ Physical Modeling
![물리이미지](./images/다다익성_물리적모델링.png)


---
## Software Requirement Specification
- [**요구사항명세서**](https://docs.google.com/spreadsheets/d/1Mmpfjvvy2EqmD_xztQCP8p7X98NCN32QOAH2ceaW76E/edit?usp=sharing)
  
![요구사항명세서](./images/다다익성_요구사항명세서.jpg)

## Test Case
- [**테스트케이스**](https://docs.google.com/spreadsheets/d/1horLzfjah3TyV4bXiBRzJA1DVeNDPiJfk2p_B6-7Hzg/edit?usp=sharing)  

![테스트케이스](./images/다다익성_테스트케이스.png)

### User Management
<details>
<summary>User</summary>
 
<details>
<summary>회원가입</summary>
<img src="./images/test_001.gif">
</details>

<details>
<summary>팝업운영자 회원가입(인증대기)</summary>
<img src="./images/test_002.gif">
</details>

<details>
<summary>회원탈퇴</summary>
<img src="./images/test_003.gif">
</details>

<details>
<summary>아이디찾기</summary>
<img src="./images/test_004.gif">
</details>

<details>
<summary>회원정보수정</summary>
<img src="./images/test_005.gif">
</details>

<details>
<summary>팝업운영자 회원정보수정</summary>
<img src="./images/test_006.gif">
</details>

<details>
<summary>회원 프로필 사진 변경</summary>
<img src="./images/test_007.gif">
</details>
</details>

<details>
<summary>Administrator</summary>

<details>
<summary>사용자계정 이용제한</summary>
<img src="./images/test_008.gif">
</details>

<details>
<summary>블랙리스트조회</summary>
<img src="./images/test_009.gif">
</details>

<details>
<summary>팝업운영자등록</summary>
<img src="./images/test_010.gif">
</details>

<details>
<summary>팝업게시물등록</summary>
<img src="./images/test_011.gif">
</details>

<details>
<summary>팝업게시물 수정관리</summary>
<img src="./images/test_012.gif">
</details>

<details>
<summary>관리자 리뷰신고관리</summary>
<img src="./images/test_013.gif">
</details>

<details>
<summary>관리자 댓글신고관리</summary>
<img src="./images/test_014.gif">
</details>
</details>

### Activity Management
<details>
<summary>Review Board Management</summary>

<details>
<summary>리뷰조회</summary>
<img src="./images/test_015.gif">
</details>

<details>
<summary>리뷰작성</summary>
<img src="./images/test_016.gif">
</details>

<details>
<summary>리뷰삭제</summary>
<img src="./images/test_017.gif">
</details>

<details>
<summary>리뷰수정</summary>
<img src="./images/test_018.gif">
</details>

<details>
<summary>리뷰좋아요</summary>
<img src="./images/test_019.gif">
</details>

<details>
<summary>리뷰좋아요취소</summary>
<img src="./images/test_020.gif">
</details>

<details>
<summary>리뷰댓글작성</summary>
<img src="./images/test_021.gif">
</details>

<details>
<summary>리뷰댓글수정</summary>
<img src="./images/test_022.gif">
</details>

<details>
<summary>리뷰댓글삭제</summary>
<img src="./images/test_023.gif">
</details>

<details>
<summary>리뷰댓글신고</summary>
<img src="./images/test_024.gif">
</details>

<details>
<summary>리뷰게시물신고</summary>
<img src="./images/test_025.gif">
</details>

<details>
<summary>베스트 리뷰 조회</summary>
<img src="./images/test_026.gif">
</details>
</details>

<details>
<summary>Popup Board Management</summary>

<details>
<summary>팝업게시물조회</summary>
<img src="./images/test_027.gif">
</details>

<details>
<summary>진행상태별 팝업게시물 조회</summary>
<img src="./images/test_028.gif">
</details>

<details>
<summary>팝업게시물 등록요청</summary>
<img src="./images/test_029.gif">
</details>

<details>
<summary>팝업게시물 수정요청</summary>
<img src="./images/test_030.gif">
</details>

<details>
<summary>팝업게시물삭제</summary>
<img src="./images/test_031.gif">
</details>

<details>
<summary>관심목록조회</summary>
<img src="./images/test_032.gif">
</details>

<details>
<summary>관심목록등록</summary>
<img src="./images/test_033.gif">
</details>

<details>
<summary>관심목록취소</summary>
<img src="./images/test_034.gif">
</details>

<details>
<summary>팝업게시물 문의사항등록</summary>
<img src="./images/test_035.gif">
</details>

<details>
<summary>팝업게시물 문의사항수정</summary>
<img src="./images/test_036.gif">
</details>

<details>
<summary>팝업게시물 문의사항삭제</summary>
<img src="./images/test_037.gif">
</details>

<details>
<summary>팝업게시물 문의사항 답변등록</summary>
<img src="./images/test_038.gif">
</details>

<details>
<summary>팝업별 리뷰게시물조회</summary>
<img src="./images/test_039.gif">
</details>

<details>
<summary>별점평균순 베스트게시물조회</summary>
<img src="./images/test_040.gif">
</details>

<details>
<summary>관심목록순 베스트게시물조회</summary>
<img src="./images/test_041.gif">
</details>
</details>

<details>
<summary>Payment Management</summary>

<details>
<summary>결제진행</summary>
<img src="./images/test_042.gif">
</details>

<details>
<summary>결제환불</summary>
<img src="./images/test_043.gif">
</details>

<details>
<summary>거래내역조회</summary>
<img src="./images/test_044.gif">
</details>

<details>
<summary>판매내역조회</summary>
<img src="./images/test_045.gif">
</details>
</details>

<details>
<summary>Ticket Management</summary>

<details>
<summary>티켓발급</summary>
<img src="./images/test_046.gif">
</details>

<details>
<summary>티켓조회</summary>
<img src="./images/test_047.gif">
</details>
</details>


### Service Management
<details>
<summary>Customer Support Management</summary>

<details>
<summary>문의사항 답변등록</summary>
<img src="./images/test_048.gif">
</details>

<details>
<summary>문의사항 답변수정</summary>
<img src="./images/test_049.gif">
</details>

<details>
<summary>문의사항 답변삭제</summary>
<img src="./images/test_050.gif">
</details>

<details>
<summary>문의사항조회</summary>
<img src="./images/test_051.gif">
</details>
</details>

---

## Tech Stack

| Category   | Tools/Technologies |
|------------|--------------------|
| Database   |   <img src="https://img.shields.io/badge/mariadb-003545?style=for-the-badge&logo=mariadb&logoColor=white">          |
| OS    |   <img src="https://img.shields.io/badge/linux-FCC624?style=for-the-badge&logo=linux&logoColor=black">  <img src="https://img.shields.io/badge/ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=black">|
| Cloud Server | <img src="https://img.shields.io/badge/git-F05032?style=for-the-badge&logo=git&logoColor=white"> <img src="https://img.shields.io/badge/github-181717?style=for-the-badge&logo=github&logoColor=white">     |
| Modeling |   <img src="https://img.shields.io/badge/da%23-84A454?style=for-the-badge&logo=&logoColor=black" alt="da#">  |


---
## License

This project is licensed under the [MIT License](LICENSE).

---

## Team Assessments

### 한윤상
| Team Member | Peer Review |
|----------|----------|
| 강이도은    | Data     |
| 고도연    | Data     |
| 김기종    | 팀장으로서 항상 침착하게 팀을 이끌어주고 부딪히는 문제나 어려움에 대해 현명하게 대처해줘서 같은 팀으로써 감사했습니다 !     |
| 이성준    | 어찌보면 저희 팀이 존재하게된 저희 팀의 구심점이었습니다. 팀장님이 안계셧다면 사이좋은 저희 팀이 모이지 않았을꺼 같습니다. 팀장 역할을 맡게 되었을때 많이 당황하셨을테지만 프로젝트를 진행하면서 팀장으로써의 리더쉽과 결단력을 잘 보여주셔서 믿고 따를 수 있어 감사했습니다.    |
| 주아현    | Data     |
### 강이도은
| Team Member | Peer Review |
|----------|----------|
| 한윤상    | 프로젝트 아이디어를 제안하는 초기 단계부터 문서 작성까지, 다재다능한 올라운더..!! 프로젝트 진행 중에는 꼭 짚고 넘어가야 할 부분을 꼼꼼하게 체크하고 팀원들에게 적시에 알려주셔서, 누락된 부분 없이 완벽에 가까운 결과물을 도출하는 데 큰 기여를 하셨습니다. 아무도 말하지 않아도 해야 할 일이 생기면 주도적으로 나서 틀을 잡아주시는 모습이 정말 인상적이었고, 대립되는 의견이 있을 때는 항상 다른 팀원의 의견을 경청하며 합의점을 찾아내는 모습은 배울 점이 많았습니다. 이러한 리더십 덕분에 팀원 모두가 수월하게 프로젝트를 진행할 수 있었으며, 많은 의지가 되었습니다. 덕분에 팀이 끝까지 성공적으로 달릴 수 있었습니다!     |
| 고도연    | Data     |
| 김기종    | 항상 논리적으로 꼼꼼하게 매사에 해결책을 주시는 모습과 엄청난 ppt능력 덕분에 성공적으로 마칠 수 있었던 거 같아 감사합니다 !     |
| 이성준    | 저희 팀에 있어 모두가 문서작업에 참여를 하였지만, 항상 마지막에 아현님과 함께 문서작업이 잘되었는지 확인해주고 수정사항이 있을때마다 부지런히 매번 문서작업의 책임을 져주어서 저희 프로젝트의 모델링과 정의서 등 여러 문서들이 빈틈없고 정말 꼼꼼하게 잘했다고 칭찬을 받을 수 있었습니다. 거기다 도연님과 함께 예술적인 ppt를 만들어주셔서 정말 감사드립니다.     |
| 주아현    | Data     |
### 고도연
| Team Member | Peer Review |
|----------|----------|
| 한윤상    | 거짓말은 절대 하지 않는 사람! "디자인에 자신 있다"는 말을 듣고 농담 삼아 디자인 부분을 모두 맡아달라고 했는데, 최종 발표 자료가 디자인 전공자도 놀랄 만큼 완벽해서 팀 모두 감탄했습니다. 프로젝트 진행 중에는 날카로운 질문들로 프로젝트의 방향성을 점검하고 개선점을 찾는 데 큰 도움을 주셨습니다. 바쁜 아르바이트와 병행하며 시간을 쪼개 맡은 일을 해내는 것뿐만 아니라, 필요한 부분을 추가로 챙기며 최선을 다하는 열정은 팀에 큰 동기부여가 되었습니다. 디자인 감각뿐만 아니라 꼼꼼하고 열정적인 자세로 프로젝트를 더욱 완성도 있게 만들어 주셔서 정말 감사합니다!     |
| 강이도은    | Data     |
| 김기종    | 밝은 얼굴과 에너지로 번뜩이고 효율적인 아이디어를 제공하시는 모습과 더불어 엄청난 ppt능력 덕분에 많은 도움을 받아 감사합니다 !     |
| 이성준    | 전날 밤을 새고 오든 감기에 걸려서 목소리가 제대로 나오지 않을 정도로 아프지만, 웃음과 에너지를 잃지않았던 어찌보면 우리팀의 활력소와 같은 역할을 해주셨습니다. 프로젝트를 진행하던 중 모두가 힘들어 할 때 밝은 에너지로 힘을 불어넣어주셨고, 미적 감각이 없는 저희에게 예술같은 ppt 디자인으로 저희를 살려주어서 감사합니다     |
| 주아현    | Data     |
### 김기종
| Team Member | Peer Review |
|----------|----------|
| 한윤상    | 우리 팀의 분위기 메이커이자 유일한 E! 말로 다 표현하지 못할 많은 고생을 해주셔서 진심으로 감사드립니다. 팀 초반의 어색한 분위기부터 프로젝트 후반까지, 항상 밝고 활기차게 이끌어주신 덕분에 팀 분위기가 늘 좋았습니다. 웃음과 긍정적인 에너지를 통해 팀 사기를 북돋아줄 뿐만 아니라, 맡은 역할에 대해 항상 책임감을 가지고 임하셨습니다. 남들이 꺼리는 일을 선뜻 맡아주며 팀을 위한 헌신적인 모습을 보여주셔서 정말 감사했습니다. 처음에는 발표에 자신 없다고 하셨지만, 실제로는 팀의 최고 발표자로서 완벽하게 역할을 해주셨습니다. 덕분에 팀원 모두 웃으면서 프로젝트를 성공적으로 마무리할 수 있었습니다!     |
| 강이도은    | Data     |
| 고도연    | Data     |
| 이성준    | 저희 팀에 없었다면, 대화의 시작이 없었을 수 도 있었을 수도 있었고 기종님이 있었기에 우리 팀의 소통이 존재했다라고 해도 과언이 아닐만큼 소극적인 우리 팀에 한줄기의 빛이 되어주셨습니다. 또한 프로젝트 도중 앞으로 나아가지 못하고 헤매고 있을때 한번씩 앞으로 나아가게 도움을 줌으로써 어쩌면 제 시간에 우리의 프로젝트를 무사히 끝마칠수 있게 도움을 주셔서 감사합니다     |
| 주아현    | Data     |
### 이성준
| Team Member | Peer Review |
|----------|----------|
| 한윤상    | 토니 스타크를 보유한 팀! 방대한 지식과 뛰어난 논리력을 바탕으로 모델링과 쿼리 작성에서 큰 도움을 주셨습니다. 잘 모르는 부분이 있더라도 책이나 자료를 통해 즉시 찾아보며 공부하는 열정이 돋보였고, 이러한 자세는 팀원들에게도 큰 자극을 주었습니다. 프로젝트 진행 중에는 다양한 의견과 피드백을 적극적으로 제시해 주셨는데, 나중에 돌이켜보니 그 의견들이 강사님 피드백과 상당히 유사했던 점에서 깊은 통찰력을 느낄 수 있었습니다. 의문이 드는 부분은 바로 질문하고 해결하려는 꼼꼼함 덕분에 완성도 높은 결과물을 얻을 수 있었습니다!     |
| 강이도은    | Data     |
| 고도연    | Data     |
| 김기종    | 남들은 얼핏 보거나 못 보고 지나치는 모습도 한번 더 보고 매사에 최선을 다해 열심히 임해주시는 모습에 감사할 따름입니다 !     |
| 주아현    | Data     |
### 주아현
| Team Member | Peer Review |
|----------|----------|
| 한윤상    | 배려왕! 상대방의 기분을 상하지 않게 배려 깊게 소통하는 능력을 갖추셨고, 의견 대립 과정에서도 항상 원활한 중재를 통해 팀 내 불필요한 마찰을 없애주셨습니다. 회의 중에는 다음으로 논의할 사항을 빠르게 캐치해 주도적으로 의견을 제시하며 이끌어 주셨습니다. 프로젝트 외에도 항상 남들보다 더 많은 시간을 개인 공부에 투자하며 자기 계발에 힘쓰는 모습을 보여주셨고, 이러한 열정은 팀원들에게도 긍정적인 자극이 되었습니다. 팀 분위기가 잠시 좋지 않을 때도 먼저 나서서 "우리 힘내보자!"며 분위기를 다잡아 주셨고, 그 책임감 덕분에 팀이 더욱 단단하게 뭉칠 수 있었습니다!     |
| 강이도은    | Data     |
| 고도연    | Data     |
| 김기종    | 남들을 향해 아낌 없이 배려해주시고 적극적인 의사소통으로 팀에 녹아드는 모습을 보고 많이 배우는 거 같습니다. 감사할 따름입니다 !     |
| 이성준    | 매일 10시까지 남아 스터디를 진행하며 엄청난 노력을 하고, 스터디가 하기 싫어 나태해질때 아현님을 바라보며 마음을 다잡기도하고,프로젝트에서 우리가 생각하지 못하고 수정하지 않았던 작업들을 수행하며 놓칠만한 것들을 놓치지 않게 꼼꼼히 챙겨주어 프로젝트가 원만하게 진행되었습니다|

---


<div align="center">
  <h3>Thank you for checking out our project! We hope to inspire and innovate with our database-driven pop-up store solution.</h3>
</div>
