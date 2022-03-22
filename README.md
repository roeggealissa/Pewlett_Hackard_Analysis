# Pewlett_Hackard_Analysis

# Understanding Databases with SQL

### Project Goals

The purpose of this analysis is to use SQL to understanding the timing of replacements in the next few years and exactly how many employees will be paid out by their retirement benefits. A secondary part of this project is creating an employee database using SQL. This project is an example of querying a self created employee database using SQL and making business decisions as a result of the data analysis.

### Data Analysis

##### Data

The data originally comes in the form of six csvs detailing parts of the business and employees. The employee names, birth dates, hire dates and leaving dates, as well as departments they belong to and titles they have head within the company are our primary interest. These csvs are imported into Postgres and used to fill the databases created in SQL.

##### Relational Database
![](https://github.com/roeggealissa/Pewlett_Hackard_Analysis/blob/d2a7e1618d5aa2effbb8cffc0e7fd0536591efdf/Data/EmployeeDB.png)
The above image shows the relational database created from the csv files. It also details the keys that are linked between tables.

##### Analysis

Once I have the initial six tables, I selected the data I needed to create new tables that are need. First I look for older workers who will be retiring soon filtering by birth date. I then took an additional step and filter that table and create a new one of unique instances of employees, as some employees changed job while at the company and thus have more than one employee record. From there I counted how many employees are in each job type to determine how many employees per position will need to be filled to compensate for those retiring. In addition to this, I looked for slightly younger employees to possibly enter a mentorship program under these retiring staff members. From this I query to see if the number of retiring employees is close to that of possible mentees in the program.

### Results

Through our analysis I determined there are a large number of employees retiring and not enough employees to fill the positions behind them. Between all positions in the company, 90383 employees are eligible for retirement packages at this time. The two highest positions that will suffer from this are Senior Engineers and Senior Staff. Conversely, only 1549 employees are eligible for the mentorship program at this time with its current definition. However, a table including all employees with birthdates younger than January 1st 1965 contains the same count of employees. Querying for all birth dates in descending to check who the youngest employee is found there are no employees in the employee table that have a birth date after Feburary 1965. This means that even if the program eligability was extended to younger employees, no additional staff in the employee table are eligible. This could be a quirk of the data provided, I could have recieved a truncated version of the data with only older employees, or this could mean the company is staffed exclusively by older individuals in the departments and positions I have looked at. Querying for the count of titles reveals there is a slightly higher number of employees with the title Engineer or Staff compared to the Senior versions, but in all positions the number of retiring employees is not close to the total employees. I would recommend enquiring about the existance younger members the company, and redoing the analysis for the mentorship program with wider age criteria if I can obtain their data.
