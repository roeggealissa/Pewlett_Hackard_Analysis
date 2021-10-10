# Pewlett_Hackard_Analysis

# Understanding Databases with SQL

### Introduction

Our client, Bobby, is an HR analysist with Pewlett Hackard who performs employee research. We have been contacted to assist with determining two things. The first is who will be retiring in the next few years, and second is how many positions will need to be filled. The purpose of this analysis is to aid Pewlett Hackard future proof by understanding the timing of replacements in the next few years and exactly how many employees will be paid out by their retirement benefits. A secondary part of this project is creating an employee database for Pewlett Hackard using SQL.

### Data Analysis

##### Data

The data originally comes in the form of six csvs detailing various bits of the business and employees. The employee names, birth dates, hire dates and leaving dates, as well as departments they belong to and titles they have head within the company are our primary interest. These csvs are imported into Postgres and used to fill the databases created in SQL.

##### Analysis

Once we have the initial six tables, we can select the data we need from various ones to create new tables we need. First we look for older workers who will be retiring soon filtering by birth date. We then take an additional step and filter that table and create a new one of unique instances of employees, as some employees changed job while at the company and thus have more than one employee record. From there we can count how many employees are in each job type to determine how many employees per position will need to be filled to compensate for those retiring. In addition to this, we look for slightly younger employees to possibly enter a mentorship program under these retiring staff members. From this we look at if the number of retiring employees is close to that of possible mentees in the program.

### Results

Through our analysis we have determined there are a large number of employees retiring and not enough employees to fill the positions behind them. Between all positions in the company, 90383 employees are eligible for retirement packages at this time. The two highest positions that will suffer from this are Senior Engineers and Senior Staff. Conversely, only 1549 employees are eligible for the mentorship program at this time with its current definition. However, a table including all employees with birthdates younger than January 1st 1965 contains the same count of employees. Thinking this was an issue with the query, I queried for all birth dates in descending order and found there are no employees in the employee table that have a birth date after Feburary 1965. This means that even if the program eligability was extended to younger employees, no additional staff in the employee table are eligible. This could be a quirk of the data provided, we could have recieved a truncated version ofthe data with only older employees, or this could mean the company is staffed exclusively by older individuals in the departments and positions we've looked at. With the data provided we would be unable to tell and thus would have to ask Bobby if there are more extensive employee records we were not provided access to, either of younger employees or of employees in psotions that are eligible for promotion into these retiring roles.
