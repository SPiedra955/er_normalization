# ER Normalization
## Table of contents
 * [**Introduction**](#introduction)
 * [**Normalization diagram**](#normalization-diagram)
    * [**Activity**](#activity)
    * [**Answer**](#answer)
    * [**Explanation**](#explanation) 
 * [**Normalization activity**](#normalization-activity)
    * [**Propose activity**](#propose-activity)
    * [**Answer activity**](#answer-activity)
 * [**Normalization problem**](#normalization-problem)
    * [**Propose problem**](#propose-problem)

# Introduction

This repository has three differents activities and its content his related to the relational diagrams normalization:
   - First part ````Normalization diagram````
   - Second part ````Normalization activity````
   - Third part ````Normalization problem````

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

# Normalization activity

### Propose activity

![image](https://github.com/SPiedra955/er_normalization/assets/114516225/cdd1e290-c2cc-46cc-8d43-9dfcd6b1f01d)

### Answer activity

![image](https://github.com/SPiedra955/er_normalization/assets/114516225/2735dd00-324f-4855-8507-70eaea23fda9)

# Normalization problem

### Propose problem

Look at the examples in the material provided by the teacher or any other examples you can find online and propose a normalization exercise and solve it. The exercise will start with a database model that does not comply with the 1NF. The database should be normalized up to 3NF and it must require some transformation in every step.

Then propose another exercise of a database that does not comply with the BCNF and transform it to a BCNF compliant database.
