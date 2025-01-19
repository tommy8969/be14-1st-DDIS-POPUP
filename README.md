# POP UP! 팝업스토어 티켓 결제 대행 서비스
![배너](./images/다다익성_팝업배너.png)


---

### 👥 Meet the **다다익姓(성)** Team Members

<center>

|<img src="https://avatars.githubusercontent.com/u/108400640?v=4" width="150" height="150"/>|<img src="https://avatars.githubusercontent.com/u/128581270?v=4" width="150" height="150"/>|<img src="https://avatars.githubusercontent.com/u/77000498?v=4" width="150" height="150"/>|<img src="https://avatars.githubusercontent.com/u/74580387?v=4" width="150" height="150"/>|<img src="https://avatars.githubusercontent.com/u/174398545?v=4" width="150" height="150"/>|<img src="https://avatars.githubusercontent.com/u/106576062?v=4" width="150" height="150"/>|
|:-:|:-:|:-:|:-:|:-:|:-:|
|한윤상<br/>[@tommy8969](https://github.com/tommy8969)|강이도은<br/>[@RKDLDE](https://github.com/RKDLDE)|고도연<br/>[@ddxyxxn](https://github.com/ddxyxxn)|김기종<br/>[@rrangeess](https://github.com/rrangeess)|이성준<br/>[@1214alex](https://github.com/1214alex)|주아현<br/>[@Jooahyeon](https://github.com/Jooahyeon)|


</center>


## 목차 
1. [개요](#🎯-Project-Overview)  
1-1. [서비스 설명](#POP-UP!)  
1-2. [목적 및 필요성](#📌-Project-Necessity)   
1-3. [차별화 전략](#💡-Differentiation-Strategy)  
2. [주요기능](#🚀-POP-UP!-Main-Functionalities)  
2-1. [상세기능](#📋-Role-based-Functionalities)  
3. [모델링](#🏗️-DB-Modeling)  
4. [기술 스택](#🛠️-Tech-Stack)  
5. [라이센스](#📜-License)  


    
## 🎯 Project Overview
---
### POP UP!
> 쉽고 빠른 POPUP STORE 운영, 이제 우리의 서비스와 함께하세요!
POPUP STORE는 단기간 동안 특정 제품이나 브랜드를 홍보하기 위해 열리는 소규모 매장으로, 최근 독창적인 마케팅 전략으로 주목받고 있습니다. 그러나 성공적인 POPUP STORE 운영에는 체계적인 홍보와 결제 시스템이 필수입니다. 우리의 플랫폼은 이러한 니즈를 완벽히 충족하는 올인원 솔루션을 제공합니다.>
---
### 📌 Project Necessity
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

## 🚀 POP UP! Main Functionalities

- 팝업 운영자는 게시물을 등록하여 팝업을 홍보하고 티켓을 판매할 수 있습니다.

- 사용자는 다양한 팝업 정보를 확인하며, 티켓 구매 및 리뷰와 별점을 통해 자신의 반응을 남길 수 있습니다

---

## 📋 Role-based Functionalities

#### 회원

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

#### 팝업 운영자

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

#### 관리자

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

## 🏗️ DB Modeling
### Flowchart
![플로우차트이미지](./images/다다익성_플로우차트.png)


### Conceptual Modeling
![개념이미지](./images/다다익성_유스케이스.jpg)


### Logical Modeling
![논리이미지](./images/다다익성_논리모델링.png)


### Physical Modeling
![물리이미지](./images/다다익성_물리적모델링.png)


---

## 🛠️ Tech Stack

| Category   | Tools/Technologies |
|------------|--------------------|
| Database   |   <img src="https://img.shields.io/badge/mariadb-003545?style=for-the-badge&logo=mariadb&logoColor=white">          |
| OS    |   <img src="https://img.shields.io/badge/linux-FCC624?style=for-the-badge&logo=linux&logoColor=black">  <img src="https://img.shields.io/badge/ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=black">|
| Cloud Server | <img src="https://img.shields.io/badge/git-F05032?style=for-the-badge&logo=git&logoColor=white"> <img src="https://img.shields.io/badge/github-181717?style=for-the-badge&logo=github&logoColor=white">     |
| Modeling |   <img src="https://img.shields.io/badge/da%23-84A454?style=for-the-badge&logo=&logoColor=black" alt="da#">  |


---
## 📜 License

This project is licensed under the [MIT License](LICENSE).

---



<div align="center">
  <h3>Thank you for checking out our project! We hope to inspire and innovate with our database-driven pop-up store solution.</h3>
</div>
