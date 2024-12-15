# Product Management System

A Product Management System built using **Java JSP, Servlets, and Bootstrap** to manage product details efficiently. This project provides an intuitive interface to add, update, delete, and view products with ease.

---

## 📋 Table of Contents
- [Project Overview](#-project-overview)
- [Features](#-features)
- [Technologies Used](#%EF%B8%8F-technologies-used)
- [Screenshots](#%EF%B8%8F-screenshots)
- [Setup and Installation](#%EF%B8%8F-setup-and-installation)
- [Folder Structure](#-folder-structure)


---

## 🚀 Project Overview

This project is designed to help manage product data such as product name, price, quantity, and category. It allows users to perform the following CRUD operations:

- **Add Product**: Insert a new product into the database.
- **Display Products**: View all products in a structured table.
- **Update Product**: Modify existing product details.
- **Delete Product**: Remove a product from the database.

---

## 🎯 Features
- Responsive UI built using **Bootstrap**.
- Complete **CRUD Operations** (Create, Read, Update, Delete).
- Integrated **Database Connectivity** using JDBC.
- Modularized design with separate JSP pages for different functionalities.
- Reusable components like header (nav bar) and footer.

---

## 🛠️ Technologies Used
- **Java** (JSP, Servlets)
- **HTML5**, **CSS3**
- **Bootstrap 4**
- **JSTL** for dynamic rendering
- **MySQL** for the database
- **JDBC** for database connectivity

---

## 🖼️ Screenshots

| Page            | Description               |
|-----------------|---------------------------|
| **Home Page**   | The landing page of the app. |
| **Add Product** | Add new products to the database. |
| **Display Products** | View all existing products in the database. |
| **Update Product** | Modify details of a selected product. |

(Screenshots can be added to the `screenshots/` folder for better visualization.)

---

## ⚙️ Setup and Installation

### Prerequisites
Make sure you have the following installed:
1. **JDK 8** or later
2. **Apache Tomcat Server**
3. **MySQL Database Server**
4. **IDE** (Eclipse, IntelliJ, or NetBeans)

### Steps
1. Clone the Repository:
    ```bash
    git clone https://github.com/your-username/product-management-system.git
    cd product-management-system
    ```
2. Import Project into IDE:
    - Open your preferred IDE.
    - Import the project as a **web project**.
3. Configure MySQL Database:
    - Create a database named `productdb`.
    - Use the following table schema:
      ```sql
      CREATE TABLE product (
          pid INT AUTO_INCREMENT PRIMARY KEY,
          name VARCHAR(255) NOT NULL,
          price DOUBLE NOT NULL,
          quantity INT NOT NULL,
          category VARCHAR(255)
      );
      ```
4. Update Database Connection:
    - Update the JDBC connection in your servlet file:
      ```java
      String url = "jdbc:mysql://localhost:3306/productdb";
      String username = "root";
      String password = "your-password";
      ```
5. Run the Project:
    - Deploy the project on the **Tomcat Server**.
    - Visit: `http://localhost:8080/product-management-system`.

---

## 📂 Folder Structure

```plaintext
product-management-system/
│
├── WebContent/
│   ├── css/                # CSS files
│   ├── images/             # Images used in the project
│   ├── add-product.jsp     # Add product page
│   ├── display-product.jsp # Display products page
│   ├── update-product.jsp  # Update product page
│   ├── index.jsp           # Home page
│   ├── footer.jsp          # Footer section
│   ├── nav.jsp             # Navigation bar
│
├── src/                    # Java Source Code
│   ├── controller/
│   │   ├── AddProductServlet.java
│   │   ├── DisplayProductServlet.java
│   │   ├── UpdateProductServlet.java
│   │   ├── DeleteProductServlet.java
│
├── screenshots/            # Project screenshots
├── README.md               # Project documentation
└── pom.xml                 # Maven dependencies (optional)
