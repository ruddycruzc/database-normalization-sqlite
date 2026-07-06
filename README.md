<div align="center">

# SQLite Database Normalization

Database normalization project developed during the **Full Stack Java Bootcamp**.

<br>

![Status](https://img.shields.io/badge/Status-In%20Progress-yellow?style=for-the-badge)
![Bootcamp](https://img.shields.io/badge/Bootcamp-Full%20Stack%20Java-orange?style=for-the-badge)
![Repository](https://img.shields.io/badge/Repository-Academic%20Project-blue?style=for-the-badge)

<br><br>

[![Tech Stack](https://skillicons.dev/icons?i=sqlite,git,github,vscode)](https://skillicons.dev)

</div>

---

# Project Information

| Property | Value |
|-----------|-------|
| **Project** | SQLite Database Normalization |
| **Version** | 1.0.0 |
| **Status** | 🚧 In Progress |
| **Bootcamp** | Full Stack Java |
| **Repository Type** | Academic Project |
| **Database** | SQLite |
| **Maintainer** | Ruddy P. Cruz Campoverde |

---

# Tech Stack

| Technology | Purpose |
|------------|---------|
| [![Tech Stack](https://skillicons.dev/icons?i=sqlite)](https://skillicons.dev) SQLite | Relational database |
| DBeaver | Database management |
| [![Tech Stack](https://skillicons.dev/icons?i=git)](https://skillicons.dev) Git | Version control |
| [![Tech Stack](https://skillicons.dev/icons?i=github)](https://skillicons.dev) GitHub | Source code hosting |
| [![Tech Stack](https://skillicons.dev/icons?i=vscode)](https://skillicons.dev) Visual Studio Code | Development environment |
| diagrams.net | Database diagram design |

---

# Summary

- [Overview](#overview)
- [Objectives](#objectives)
- [Project Structure](#project-structure)
- [Database Design](#database-design)
- [Implementation](#implementation)
- [Project Evidence](#project-evidence)
- [Learning Outcomes](#learning-outcomes)
- [Author](#author)

---

# Overview

### 🇬🇧 English

This project focuses on database normalization using SQLite. Starting from a non-normalized table, the objective is to redesign the database by applying normalization principles, creating Entity-Relationship diagrams, and validating the final database through SQL queries.

### 🇪🇸 Español

Este proyecto se centra en la normalización de bases de datos utilizando SQLite. Partiendo de una tabla no normalizada, el objetivo es rediseñar la base de datos aplicando los principios de normalización, creando diagramas Entidad-Relación y validando la estructura final mediante consultas SQL.

---

# Objectives

| ID | Description | Status |
|----|-------------|:------:|
| OBJ-01 | Create SQLite database | ✓ |
| OBJ-02 | Execute provided SQL scripts | ✓ |
| OBJ-03 | Analyze non-normalized table | ✓ |
| OBJ-04 | Normalize database |  ✓ |
| OBJ-05 | Create Chen diagram |  ✓ |
| OBJ-06 | Create Crow's Foot diagram | ⏳ |
| OBJ-07 | Create SQL query | ✓ |
| OBJ-08 | Complete project documentation | ⏳ |

---

# Project Structure

```
database-normalization-sqlite
├─ database
│  └─ db_any_company_global.db
├─ diagrams
│  └─ image-diagram.png
├─ README.md
├─ screenshots
│  ├─ create-table.png
│  ├─ normalization-tables.png
│  ├─ query-sale-country.png
│  ├─ sample-data.png
│  └─ sql-database.png
└─ sql
   ├─ any_company_global_create_table_script.sql
   ├─ any_company_global_insert_data_script.sql
   ├─ normalization.sql
   ├─ populate_normalized_tables.sql
   └─ query_sale_country.sql

```

---

# Database Design

## Initial Analysis

### English

The original table stores different types of information in a single entity.

Three potential entities were identified:

- Product information
- Geographic information
- Sales information

This design produces duplicated data and makes the database difficult to maintain.

### Español

La tabla original almacena diferentes tipos de información en una única entidad.

Se identifican tres posibles entidades:

- Información de productos
- Información geográfica
- Información de ventas

Este diseño provoca duplicidad de datos y dificulta el mantenimiento de la base de datos.

---

# Implementation

## DB-5 | Execute provided SQL scripts

### Completed Tasks

- ✓ Created the SQLite database.
- ✓ Executed the SQL script provided to create the initial table.
- ✓ Imported the sample dataset into the database.
- ✓ Verified that the table and records were created successfully.
- ✓ Prepared the project to begin the normalization process.

---

# Project Evidence

## Execute provided SQL scripts

### SQLite database created

![SQLite database](./screenshots/sql-database.png)

---

### Table created successfully

![Create table](./screenshots/create-table.png)

---

### Sample data inserted

![Sample data](./screenshots/sample-data.png)

---
## Database normalization

![Normalized tables](./screenshots/normalization-tables.png)

---

## SQL Query Result

The following query retrieves the country where the sale with ID **3** was performed after the database normalization process.

La siguiente consulta obtiene el país donde se realizó la venta con identificador **3** una vez normalizada la base de datos.

![SQL Query Result](./screenshots/query-sale-country.png)

---

The database was successfully initialized using the SQL scripts provided by the bootcamp. The resulting table (`sales_not_normalized`) will serve as the starting point for the normalization process in the following tasks.

La base de datos se inicializó correctamente utilizando los scripts SQL proporcionados por el bootcamp. La tabla resultante (`sales_not_normalized`) servirá como punto de partida para el proceso de normalización en las siguientes tareas.

---

# Learning Outcomes

This section will be updated throughout the project as new concepts related to database design and normalization are learned.

_Esta sección se actualizará durante el desarrollo del proyecto conforme se vayan aprendiendo nuevos conceptos sobre diseño y normalización de bases de datos._

---

# Author

| Name | GitHub |
|------|--------|
| **Ruddy P. Cruz Campoverde** | https://github.com/ruddycruzc |
