# SQL-Challenge
## Glen Dagger
### Week 7 Homework

---

## Data Modeling

To begin, I inspected each of the provided CSV files so that I could sketch an Entity Relationship Diagram using [QuickDBD](https://www.quickdatabasediagrams.com/) that shows all of the relationships between the tables, including primary and foreign keys.

![Employee ERD](EmployeeSQL/erd_diagram.png)

Studying this diagram helped me to understand how the information relates to each other and determine the order in which the tables should be created.

---

## Data Engineering

In pgAdmin, I created a database called "SQL-Challenge". I then created the table schema using SQL in PostgreSQL, in the following order so as to handle the foreign keys: titles, employees, salaries, departments, dept_emp, and dept_manager. Once each table was created in the PostgreSQL database, I imported the data from the original CSVs into each table in the same order. The table schemata is saved in the [table_schemata.sql](/EmployeeSQL/table_schemata.sql) file in the assignment repository within the EmployeeSQL subdirectory.

---

## Data Analysis

For this section, I used the Query Tool in PostgreSQL to find the specified information. These queries are saved in the [employee_queries.sql](EmployeeSQL/employee_queries.sql) file found in the assignment repository.

---
## Bonus
The bonus section was completed in a jupyter notebook file located in the EmployeeSQL subdirectory of the repository, titled [bonus_analysis.ipynb](/EmployeeSQL/bonus_analysis.ipynb).

To complete the analysis in this section, I used SQLAlchemy to import the SQL-Challenge database.

I then wrote the two SQL queries and, usig the pd.read_sql_query function, imported them into their own dataframes. 

In order to get the information to visualize the employee salary ranges that were the most common, I selected the 'emp_no' and 'salary' columns from the salary table in my query. I created a histogram using Plotly Express that shows the number of employees in each salary range from $40k to $130k in increments of $5k. 

![Salary Histogram](EmployeeSQL/images/salary_histogram.png)

This histogram shows that by far the highest number of employees are in the lowest salary range of $40k - $45k (a little over 126,000 employees). There are almost 100,000 fewer employees in the $45k-$50k bracket (around 32,000), with diminshing amounts of employees in each subsequent bracket.

<br>

In order to create a bar chart of average salary per title, I started with the titles table, joined the employees and salaries tables, grouped by title, and selected the title and average salary per title as columns. I then created a bar chart using Plotly Express to display the average salary by job title.

![Average Salary by Title](EmployeeSQL/images/avgsalarybytitle.png)

This chart shows that the highest earning job title on average is Senior Staff, followed by Staff. I was surprised to see that the titles of Senior Engineer, Engineer, and Assistant Engineer all have roughly the same average salary.