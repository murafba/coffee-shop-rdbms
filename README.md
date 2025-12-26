# ☕ Relational Database Design and Implementation

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-15+-blue?logo=postgresql)
![SQL](https://img.shields.io/badge/SQL-Relational-blue)
![Normalization](https://img.shields.io/badge/Normalization-3NF-success)
![License](https://img.shields.io/badge/License-MIT-green)

---

Coffee shop case study using PostgreSQL.

This project demonstrates relational schema design, normalization up to 3NF, and implementation of views and materialized views.

## 📌 Overview
This project implements a relational database for a coffee shop business as a case study. The goal of the project is to design, normalize, and implement a robust relational schema that supports daily operations and analytical queries.

The database is built using PostgreSQL and follows best practices in relational design, including normalization up to Third Normal Form (3NF), proper use of primary and foreign keys, and separation between transactional and analytical structures.

---

## 🧩 Problem Context
A growing coffee shop chain stores its data across multiple systems, including point-of-sale systems, spreadsheets, and supplier databases. This fragmented setup makes it difficult to ensure data consistency and to generate reliable insights for decision-making.

The objective of this project is to consolidate these data sources into a centralized relational database that:
- Preserves data integrity
- Avoids redundancy
- Supports reporting and analysis

---

## 🗂️ Database Design
The schema is designed using a **header–detail pattern** for sales transactions and separates master data, transactional data, and lookup data.

Core entities include:
- staff
- customer
- sales_outlet
- product
- sales_transaction
- sales_detail

Two schema variants are provided:
1. **Course-aligned schema** – follows the original IBM RDBMS course structure.
2. **Extended schema** – introduces a dedicated `product_category` table to eliminate transitive dependencies and improve normalization.

Entity Relationship Diagrams (ERD) for both variants are included in the `erd/` directory.

---

## 🧠 Normalization Decisions
The schema is normalized up to **Third Normal Form (3NF)**:

- Repeating groups are removed (1NF)
- Partial dependencies are eliminated (2NF)
- Transitive dependencies are resolved by introducing lookup tables such as `product_category` (3NF)

These decisions reduce redundancy and make the schema easier to maintain and extend.

---

## 📊 Views and Materialized Views

To support reporting and analysis, the project includes:

- **Views** for frequently used joins (e.g. staff and outlet locations)
- **Materialized views** for product and category reporting, enabling faster read performance at the cost of manual refresh

All view definitions are stored as SQL scripts to ensure reproducibility.

---

## 📁 Project Structure
```
coffee-shop-rdbms/
├── sql/
    ├── GeneratedScript.sql
    ├── CoffeeData.sql
    ├── staff_location_view.sql
    ├── product_info_m-view.sql
├── erd/
├── exports/
└── screenshots/
```
## ▶️ How to Run
1. Execute `GeneratedScript.sql` to create all tables and constraints
2. Execute `CoffeeData.sql` to load sample data
3. Execute `staff_location_view.sql` to create database view
4. Execute `product_info_m-view.sql` and refresh materialized view if needed

## 🚀 What I Learned
Through this project, I gained hands-on experience with:

- Translating business requirements into a relational schema
- Applying normalization rules (1NF–3NF) in practical scenarios
- Designing transaction header–detail tables
- Managing foreign key dependencies and data insertion order
- Creating and maintaining views and materialized views in PostgreSQL
- Organizing a database project for reproducibility and version control

This project strengthened my understanding of how relational databases are designed and maintained in real-world data engineering workflows.

## 📝 Note
The base schema and sample data were adapted from an IBM Introduction to RDBMS course case study. Additional normalization, constraints, schema refinements, and analytical structures were implemented independently.