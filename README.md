# ER Normalization
## Table of contents
 * [**Introduction**](#introduction)
 * [**Relational model**](#relational-model)
    * [**Normalization**](#normalization) 
 * [**Normalization activity**](#normalization-activity)

# Introduction

Take the E-R model you consider appropriate. Convert the E-R model to a relational model and produce the associated DDL code.
Verify that the relational model satisfies 3rd normal form, optionally verify that the relational model satisfies Boyce-Codd normal form.

# Relational model

![image](https://github.com/SPiedra955/er_normalization/assets/114516225/4fc68c05-b0fc-4b7e-ae1a-7910a7567a09)

This ER model enables you to store and manage information about products, their categories, suppliers, brands, and inventory in a structured and organized manner.

## Normalization

In our relational model, both conditions are satisfied. The tables are in 2NF since all non-key attributes depend on the entire primary key, and there are no partial dependencies. Additionally, there are no transitive dependencies.

To check BCNF, we need to ensure that every determinant is a superkey. In our relational model, all tables have a single-column primary key, making it a superkey.The BCNF condition is satisfied.

Therefore, the provided relational model satisfies both 3NF and BCNF.

# Normalization activity

