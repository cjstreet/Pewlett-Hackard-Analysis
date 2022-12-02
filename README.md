# Pewlett-Hackard-Analysis: Mass Exodus


### Overview

As large numbers of employees retire, Pewlett Hackard is preparing for the future. The company is planning to offer a retirement package to eligible employees. Also, they need to determine how many and which positions will need to be filled. Pewlett Hackard needs to prepare for possibly thousands of job openings to replace the retirees. 

#### Data to collect and analyze

In order to do this Pewlett Hackard needs the following information:
* Who will be retiring in the next few years?
* How many positions will the company need to fill in each department?
* How many employees and which employees are eligible for the retirement package? 

Currently, Pewlett Hackard employs 240,124 people. The chart below shows the distribution across
the departments. 


![Num_Employees_Per_Dept](Images/total_emp_per_dept.png)




### Results

#### Number of Retirees by Title and Department

* There are a total of 72,458 people retiring at PH in the next few years. That is roughly 30%.
* Almost 26,000 employees are Senior Engineers.
* Almost 25,000 employees are Senior Staff.
* It makes sense that a lot of the employees retiring would be senior employees.
* However, there is only 2 managers retiring.

 ![Retirees_Per_Job Title](Images/count_retire_title.png)
 
 <br>

![Retirees_Per_Dept](Images/count_retirees_dept.png)
33,118
 
 #### Employees Eligible for Retirement Package
 
  ![Eligible For Benenfits](Images/total_eligible_benefits.png)
 
#### Employees Eligible for the Mentorship Program

* A total of 1,549 employees are eligible for the mentorship program.
* Roughly 33% of these employees are Senior Staff. 
* The next highest group that is eligible are the Engineers.
* Assistant Engineers's have only 78 employees eligible. 

![Mentorship_Count](Images/count_dept_mentorship.png)

<br>

### Summary

#### Insight

Provide high-level responses to the following questions, 
How many roles will need to be filled as the "silver tsunami" begins to make an impact?
Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

#### Recommendations

It would be really helpful to be provided a schema and data dictionaries with the additional tables. This would help provide a better picture as to what is the relationship between the tables and the varies "to_dates". For example, are the `to_dates` from the titles table the same as the 'to_dates in the salaries and dept_emp tables? 
provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."



![Database_Schema](EmployeeDB.png)


