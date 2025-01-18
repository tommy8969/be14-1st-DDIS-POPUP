# BE14-1st-DDIS-POPUP

<div align="center">
  <img src="https://via.placeholder.com/800x200.png?text=BE14-1st-DDIS-POPUP" alt="Project Banner" />
</div>

Welcome to the **BE14-1st-DDIS-POPUP** project! This repository showcases our team's database-focused project designed to revolutionize pop-up store management through efficient data handling and organization.

---

## 🤝 Team Members

We are **Team BE14**, focused on creating cutting-edge database solutions:

- **Database Architect:** [Your Name]  
- **Backend Lead:** [Your Name]  
- **Data Analyst:** [Your Name]  
- **Project Manager:** [Your Name]  
- **Tester:** [Your Name]  
- **Documentation Specialist:** [Your Name]  

### 👥 Meet the Team

Here is a little more about us:

| Name              | Role                  | Introduction                                                                 |
|-------------------|-----------------------|-----------------------------------------------------------------------------|
| [Your Name]       | Database Architect    | Passionate about designing scalable and efficient database systems.        |
| [Your Name]       | Backend Lead          | Loves crafting APIs and ensuring seamless backend operations.              |
| [Your Name]       | Data Analyst          | Excels at extracting meaningful insights from complex data sets.           |
| [Your Name]       | Project Manager       | Keeps the team on track and ensures timely delivery of project milestones. |
| [Your Name]       | Tester                | Focuses on ensuring the highest quality with meticulous testing.           |
| [Your Name]       | Documentation Specialist | Captures the essence of the project through comprehensive documentation.   |

---

## 🎯 Project Overview

Our pop-up store project, **DDIS-POPUP**, is centered around building a robust database system to manage and optimize the operations of pop-up stores. This includes:

- **Efficient Data Storage:** Storing and managing product, customer, and transaction data seamlessly.
- **Custom Querying:** Supporting advanced queries for real-time insights.
- **Scalability:** Ensuring the database can handle large volumes of data as the project grows.

---

## 🚀 Database Features

- **Schema Design:**
  - Optimized for relational data, ensuring efficient storage and retrieval.
  - Includes tables for products, customers, orders, and inventory.

- **Data Integrity:**
  - Enforced through primary and foreign key relationships.
  - Implemented validation rules to maintain data accuracy.

- **Real-Time Updates:**
  - Integrated with the backend to reflect live updates from user interactions.

- **Custom Reports:**
  - Provides detailed analytics for sales trends, inventory levels, and customer behavior.

---

## 📋 Role-based Functionalities

### 회원

1. 회원정보(이름, 비밀번호, 전화번호 등)를 **등록**하여 회원가입을 할 수 있습니다.
2. 회원은 아이디와 비밀번호로 **로그인**할 수 있습니다.
3. 회원은 자신이 작성한 리뷰와 댓글을 **조회**하고 관리할 수 있습니다.
4. 팝업을 **관심 목록에 추가**하거나 조회할 수 있습니다.
5. 결제를 진행하고, 결제 내역을 **확인**할 수 있습니다.
6. 팝업 티켓을 구매한 팝업 티켓 정보를 **조회**할 수 있습니다.
7. 작성한 리뷰를 **수정하거나 삭제**할 수 있습니다.
8. 작성한 댓글을 **수정하거나 삭제**할 수 있습니다.
9. 팝업 리뷰 및 댓글에 **좋아요를 누르거나 취소**할 수 있습니다.
10. 부적절한 리뷰나 댓글을 **신고**할 수 있습니다.

### 팝업 운영자

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

### 관리자

1. 블랙리스트에 등록된 사용자를 **조회**하고 관리할 수 있습니다.
2. 사용자 계정에 문제가 있을 경우 **이용을 제한**할 수 있습니다.
3. 팝업 운영자의 등록 요청을 **승인하거나 반려**할 수 있습니다.
4. 팝업 게시물과 관련된 모든 정보를 **검토하고 승인**할 수 있습니다.
5. 전체 리뷰 및 댓글에 대한 신고 사항을 **검토**하여 조치를 취할 수 있습니다.
6. 시스템 내 모든 계정에 대한 **권한 관리**를 수행할 수 있습니다.
7. 매출 및 결제 데이터를 **조회**하고 백업 또는 복구 작업을 수행할 수 있습니다.
8. 중요한 공지사항을 작성하고 상단에 **고정**할 수 있습니다.
9. 시스템 유지보수를 위해 로그 데이터를 **모니터링**할 수 있습니다.
10. 사용자 및 운영자와의 문의사항을 **관리**하고 답변을 등록하거나 삭제할 수 있습니다.

---

## 🏗️ Modeling Process

### Conceptual Modeling

- Focused on identifying the core entities and their relationships.
- Diagram and description included in the `docs/conceptual_model.pdf`.

### Logical Modeling

- Translated the conceptual model into a structured schema.
- Defined attributes, keys, and relationships.
- Diagram and description available in `docs/logical_model.pdf`.

### Physical Modeling

- Implemented the logical model using MongoDB.
- Optimized for performance and scalability.
- Details can be found in `docs/physical_model.pdf`.

---

## 🛠️ Tech Stack

| Category   | Tools/Technologies |
|------------|--------------------|
| Database   | MongoDB            |
| Backend    | Node.js, Express.js|
| Deployment | Docker, AWS        |

---

## 📂 Repository Structure

```plaintext
BE14-1st-DDIS-POPUP/
├── database/        # MongoDB setup, schema definitions, and scripts
├── backend/         # API logic interacting with the database
├── docs/            # Project documentation and database diagrams
└── README.md        # Project overview (this file)
```

---

## 🌟 Getting Started

Follow these steps to set up the project locally:

1. **Clone the repository:**
   ```bash
   git clone https://github.com/your-team-name/BE14-1st-DDIS-POPUP.git
   ```

2. **Navigate to the project directory:**
   ```bash
   cd BE14-1st-DDIS-POPUP
   ```

3. **Set up the database:**
   - Import the schema and sample data into MongoDB using the provided scripts in the `database/` folder.
   - Start MongoDB locally or connect to a cloud-hosted instance.

4. **Run the backend:**
   ```bash
   npm start
   ```

5. **Access database endpoints:**
   Use tools like Postman to test database interactions or connect the database to the frontend.

---

## 🏆 Database Highlights

### Schema Overview

<div align="center">
  <img src="https://via.placeholder.com/600x400.png?text=Database+Schema+Diagram" alt="Database Schema" />
</div>

- **Products Table:**
  - Stores product details including name, category, price, and stock levels.

- **Customers Table:**
  - Contains customer profiles with contact information and purchase history.

- **Orders Table:**
  - Tracks individual transactions, linking customers and purchased products.

- **Inventory Management:**
  - Supports automated updates for stock levels based on orders.

### Key Features

- **Query Examples:**
  - Get top-selling products.
  - Identify frequent customers.
  - Monitor low-stock items.

- **Data Visualization:**
  - Use dashboards to present key metrics and trends.

---

## 📜 License

This project is licensed under the [MIT License](LICENSE).

---

## 📞 Contact

Have questions or feedback? Reach out to us:

- **Email:** teambe14@example.com
- **GitHub Issues:** [Issues Page](https://github.com/your-team-name/BE14-1st-DDIS-POPUP/issues)

---

<div align="center">
  <h3>Thank you for checking out our project! We hope to inspire and innovate with our database-driven pop-up store solution.</h3>
</div>
