# Spammer Detection and Fake User Identification

A social media web application (like Twitter) that automatically detects spam, fake accounts, and abusive posts (hate speech, offensive/sexual content) before they go live — built with Java (JSP), and MySQL, with an admin dashboard to manage flagged content.

---

## 📌 Project Overview
This is a Java-based full-stack web application that simulates a social media platform with built-in spam detection and fake user identification. The system analyzes user-generated content and flags posts as normal or malicious (spam, fake, or abusive content) before they are published, with an admin panel to review and act on flagged content.

The project demonstrates content moderation concepts used in modern social media platforms.

---

## 🎯 Key Features
- User Registration and Authentication
- User Login and Profile Management
- Post/Tweet Creation System
- Friend Request and Social Interaction Module
- Spam Detection and Fake User Identification (keyword-based content filtering)
- Content Moderation across categories: Hateful, Offensive, Negative, Sexual, Vulgar
- Admin panel to manage filter keywords and review flagged content/requests
- Database-driven user and post management

---

## 🛠️ Technologies Used
- Java
- JSP (JavaServer Pages) — business logic is implemented directly within JSP pages
- JDBC (Database Connectivity)
- MySQL
- HTML, CSS
- Java Libraries (JAR files): MySQL Connector, JavaMail (`mail.jar`, `activation.jar`), BouncyCastle (encryption), COS (file upload handling), JSON Simple

---

## 🧱 Project Architecture

## 🧱 Project Architecture
User Interface (JSP Pages – HTML + embedded Java logic)

↓

JDBC Connection (connect.jsp → MySQL)

↓

Database Layer (MySQL - Database.sql)

↓

Keyword-based Content Filter Check (admin-defined filter lists vs. post text)

↓

Result Display (Allowed / Flagged → routed to Admin Review)

---

## 🗄️ Database
- The project uses a MySQL database.
- SQL schema is available in `Database.sql`.
- It stores:
  - User details
  - Posts/Tweets
  - Friend requests
  - Content classification/flagging results

---

## 📂 Project Structure
- `.jsp` files → UI pages with embedded business logic (Login, Register, Posts, Filters, Admin pages, etc.)
- `WEB-INF/lib` → Required Java JAR libraries
- `Database.sql` → Database schema
- `images/` → UI assets
- CSS files → Styling

---

## 🚀 How to Run the Project
1. Install Apache Tomcat server
2. Import project into Eclipse/NetBeans (or deploy manually)
3. Configure MySQL database using `Database.sql`
4. Ensure required JAR files are present in `WEB-INF/lib`
5. Run project on server (`http://localhost:8080`)

---

## 📊 Modules
- User Management Module
- Social Interaction Module
- Content Posting Module
- Spam & Fake Detection Module
- Content Moderation (Admin) Module

---

## 🔮 Possible Future Improvements
- Machine Learning-based spam detection (current version uses keyword-based filtering)
- Real-time content moderation API
- NLP-based hate speech detection
- Mobile application version
- Cloud deployment

---

## 👨‍💻 Author
Sammeta Sai Spoorthi 

---

## 📌 Note
This project was developed for academic and learning purposes to demonstrate full-stack Java web development and content moderation techniques.
