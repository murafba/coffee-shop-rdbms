# Relational Database Design and Implementation
Coffee shop case study using PostgreSQL.

This project demonstrates relational schema design, normalization up to 3NF, and implementation of views and materialized views.

## Overview
This project implements a relational database for a coffee shop case study using PostgreSQL. The schema is normalized up to Third Normal Form (3NF) and supports transactional and analytical queries.

## Database Schema
The core entities include staff, customer, sales_outlet, product, and sales_transaction with a header-detail pattern.

Two schema variants are provided:
- Course version (aligned with IBM RDBMS course)
- Extended version with a dedicated product_category table

## Normalization Decisions
The schema follows 3NF principles by separating lookup entities such as
product categories to avoid transitive dependencies.

## Views and Materialized Views
- staff_locations_view: combines staff and outlet location data
- product_info_mview: materialized view for product and category reporting

## Project Structure
```
coffee-shop-rdbms/
├── sql/
├── erd/
├── exports/
└── screenshots/
```
## How to Run
1. Execute `GeneratedScript.sql`
2. Execute `CoffeeData.sql`
3. Execute `staff_location_view.sql`
4. Execute `product_info_m-view.sql`