# Normalization
## Table of contents
 * [**Introduction**](#introduction)
 * [**Normalization diagram**](#normalization-diagram)
    * [**Activity**](#activity)
    * [**Answer**](#answer)
    * [**Explanation**](#explanation) 
 * [**Normalization problem**](#normalization-problem)
    * [**Propose problem**](#propose-problem)
    * [**Exercise 1**](#exercise-1)
    * [**Exercise 2**](#exercise-2)
 * [**Bibliography**](#bibliography)

# Introduction

This repository has two differents activities and its content his related to the relational diagrams normalization:
   - First part ````Normalization diagram````
   - Second part ````Normalization problem````
 
# Normalization diagram

### Activity

Take the E-R model you consider appropriate. Convert the E-R model to a relational model and produce the associated DDL code.
Verify that the relational model satisfies 3rd normal form, optionally verify that the relational model satisfies Boyce-Codd normal form.

### Answer

The next ER model enables you to store and manage information about products, their categories, suppliers, brands, and inventory in a structured and organized manner.

Inside the folder [````scripts````](https://github.com/SPiedra955/er_normalization/tree/main/scripts) its the [ddl.sql](https://github.com/SPiedra955/er_normalization/blob/main/scripts/ddl.sql) code related to the E-R model.

![image](https://github.com/SPiedra955/er_normalization/assets/114516225/4fc68c05-b0fc-4b7e-ae1a-7910a7567a09)

### Explanation

In our relational model, both conditions are satisfied. The tables are in 2NF since all non-key attributes depend on the entire primary key, and there are no partial dependencies. Additionally, there are no transitive dependencies.

To check BCNF, we need to ensure that every determinant is a superkey. In our relational model, all tables have a single-column primary key, making it a superkey.The BCNF condition is satisfied.

Therefore, the provided relational model satisfies both 3NF and BCNF.

# Normalization problem

### Propose problem

Look at the examples in the material provided by the teacher or any other examples you can find online and propose a normalization exercise and solve it. The exercise will start with a database model that does not comply with the 1NF. The database should be normalized up to 3NF and it must require some transformation in every step.

Then propose another exercise of a database that does not comply with the BCNF and transform it to a BCNF compliant database.

### ___Exercise 1___:

We have the following table:

![image](https://github.com/SPiedra955/er_normalization/assets/114516225/f8ad4dbb-b150-4093-8cc3-318bf31f6d2f)

We create another table in the first normal form by deleting the repeating group (subject) as shown in the following image:

![image](https://github.com/SPiedra955/er_normalization/assets/114516225/9cb4ab39-1710-45d5-af3d-452cdc016a68)

We take into account the multiple values for the ````subject```` field for each student in the table above and we split it into tables.

![image](https://github.com/SPiedra955/er_normalization/assets/114516225/6e05c403-ff26-43eb-8ba1-ea2a6f7734f2)

Let's proceed with normalizing the data into third normal form. To achieve 3NF, we need to identify and remove any transitive dependencies.
In the given data, we can identify the following functional dependencies:

- id_student → name
- id_student → class
- id_student , subject1 → subject1 
- id_student , subject2 → subject2 
- id_student , subject3 → subject3 

![image](https://github.com/SPiedra955/er_normalization/assets/114516225/5c8ba96e-f805-41f9-9815-2899208602b1)

### ___Exercise 2___:

We have the following table:

![image](https://github.com/SPiedra955/er_normalization/assets/114516225/d2ecbeb7-9ae7-4bf5-84c7-611d8aa086da)

Applying the BCNF:

In this table, we have the Student_ID, Course_ID, Course_Name, Department, and Instructor attributes. The primary key of this table is the combination of Student_ID and Course_ID.
To transform this table into a BCNF compliant database, we need to identify functional dependencies and split the table accordingly.

Functional Dependencies:

Course_ID → Course_Name, Department, Instructor
To achieve BCNF, we need to create a separate table for the identified functional dependency.

![image](https://github.com/SPiedra955/er_normalization/assets/114516225/5d03728f-697a-4477-930a-e2093e9db681)

By splitting the table based on the functional dependency, we have achieved a BCNF compliant database structure, and there are no overlapping functional dependencies.

# Bibliography

- [Normalization Exercises](https://www.studocu.com/es/document/universidad-san-jorge/lidia/ejercicios-normalizacion-base-de-datos/40941683)
- [Normalitzation Explanation](https://learn.microsoft.com/es-es/office/troubleshoot/access/database-normalization-description)
- [Normalization Guide Exercises](https://www.grch.com.ar/docs/bd/materia/11077/Normalizacion_ejercicios.pdf)


