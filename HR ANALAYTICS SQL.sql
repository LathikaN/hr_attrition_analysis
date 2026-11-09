use hr_dataset;

----- created a new table hr by appending the table hr__1 and hr__2  and removed the duplicate rows from table hr ----------
create table hr select * from hr__1 union select * from hr__2;
select count(*) from hr;

---------- here i calculated total employees, currently working employees, total leavers, attrition rate of the organisation ---------
select count(EmpID) as total_employees,
sum(case when attrition ="yes" then 0 else 1 end) as currently_working,
sum(case when Attrition ="yes" then 1 else 0 end) as total_leavers,
concat(round(100*sum(case when Attrition = "yes" then 1 else 0 end)/count(EmpID),2),"%") as attition_rate
from hr;

------------ department wise attrition rate and headcount ------------------
select Department,headcount,total_leavers,concat(attrition_rate,"%") as attrition_rate from
 (select Department,count(*) as headcount,SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS total_leavers,
round(100*sum(case when Attrition = "yes" then 1 else 0 end)/count(EmpID)) as attrition_rate from hr
group by Department order by attrition_rate desc) as x;
----------- sales has the highest attrition rate 21% compared to the other two departments -----------

-------------------  job role wise headcount and attrition rate ---------------
select JobRole,headcount,total_leavers,concat(attrition_rate,"%") as attrition_rate from 
(select JobRole,count(*) as headcount,SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS total_leavers,
round(100*sum(case when Attrition = "yes" then 1 else 0 end)/count(EmpID),2) as attrition_rate
from hr 
group by JobRole order by  attrition_rate desc) as x;
----------- sales representative has the highest attrition rate followed by laboratory technician ----------

------------------------ age group wise attrition rate and headcount ----------------
select case when Age between 18 and 25 then "18-25" when Age between 26 and 35 then "26-35" when Age between 36 and 45 then "36-45" 
when Age between 46 and 55 then "46-55" else "55+" end as age_group,count(*) as headcount,
SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS total_leavers,
concat(round(100*sum(case when Attrition = "yes" then 1 else 0 end)/count(EmpID)),"%") as attrition_rate from hr
group by age_group order by age_group asc;
----------------- age group 18-25 has the highest attrition rate of 35% and followed by the 55+ age group employees ---------------------

------------------------- salaryslab wise attrition rate and headcount --------------------------
select case when MonthlyIncome <= 3000 then "under 3k" when MonthlyIncome >3000 and MonthlyIncome <=5000 then "3k-5k" 
when MonthlyIncome > 5000 and MonthlyIncome <= 8000 then "5k-8k" when MonthlyIncome >8000 and MonthlyIncome <= 12000 then "8k-12k"
when MonthlyIncome >12000 and MonthlyIncome <= 16000 then "12k-16k" else "16k+" end as salaryslab,count(*) as headcount,
SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS total_leavers,
concat(round(100*sum(case when Attrition = "yes" then 1 else 0 end)/count(EmpID)),"%") as attrition_rate from hr
group by salaryslab
order by min(MonthlyIncome) asc;
---------------- the employees whose salary is under 3k have the highest attrition rate when compared to the other employees --------------

---------------- tenure band wise attrition rate and headcount -----------------
select case when YearsAtCompany <=1 then "upto 0 year"  when YearsAtCompany between 2 and 3 then "2 to 3" 
when YearsAtCompany between 4 and 5 then "4 to 5" when YearsAtCompany between 6 and 10 then "6 to 10" else "10+ years" end as tenureband,
count(*) as headcount,SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS total_leavers,
concat(round(100*sum(case when Attrition = "yes" then 1 else 0 end)/count(EmpID)),"%") as attrition_rate from hr
group by tenureband
order by min(YearsAtCompany); 
------------------ the employees who are working less than one year in the organisation have the highest attrition rate -----------------

------------- distanceband wise attrition rate and headcount ---------
select case when DistanceFromHome between 0 and 5 then "0 to 5" when DistanceFromHome between 6 and 10 then "6 to 10"
when DistanceFromHome between 11 and 20 then "11 to 20" else "21+" end as distanceband,count(*) as headcount,
SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS total_leavers,
concat(round(100*sum(case when Attrition = "yes" then 1 else 0 end)/count(EmpID),2),"%") as attrition_rate from hr
group by distanceband
order by min(DistanceFromHome);
---------- employees whose distanceband 21+ have the highest attrition rate compared to the other employees --------------

---------------- attrition rate by overtime -----------------
select OverTime,SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS total_leavers,
concat(round(100*sum(case when Attrition = "yes" then 1 else 0 end)/count(EmpID),2),"%") as attrition_rate from hr
group by OverTime
order by total_leavers desc;
------------------- Employees working overtime are nearly 𝟑 𝐭𝐢𝐦𝐞𝐬 more likely to leave ---------------------

---------------------- attrition rate by stock option ------------------
select StockOptionLevel,SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS total_leavers,
concat(round(100*sum(case when Attrition = "yes" then 1 else 0 end)/count(EmpID),2),"%") as attrition_rate from hr
group by StockOptionLevel
order by stockoptionlevel;
---------------- Level 0 options drive the highest exit rate (24.39%), stabilizing significantly at Levels 1 & 2 ---------------

----------------------- Attrition rate by business travel ----------------------------------
select BusinessTravel,SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS total_leavers,
concat(round(100*sum(case when Attrition = "yes" then 1 else 0 end)/count(EmpID),2),"%") as attrition_rate from hr
group by BusinessTravel limit 3;
---------------- frequently travelers have the highest attrition rate compared to the rarely travel and non travellers ----------


------------------------------- attrition by joblevel -------------------------------------------------------
select JobLevel,SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS total_leavers,
concat(round(100*sum(case when Attrition = "yes" then 1 else 0 end)/count(EmpID),2),"%") as attrition_rate from hr
group by JobLevel
order by JobLevel;
---------------- Employees at Job Level 1 have the highest attrition rate at 25.95% ---------------------------

---------- ----------------- Attrition by marital status --------------------------------------------------
SELECT MaritalStatus,
    COUNT(*) AS headcount,SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS total_leavers,
   concat(ROUND(100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(EmpID), 2),"%") AS attrition_rate
FROM hr
GROUP BY MaritalStatus
ORDER BY total_leavers DESC;
----------------------- the employees who are single have the highest attrition rate compared to the married and divorced -----------

------------------------- Attrition by gender ----------------------------------------------
SELECT Gender,
    COUNT(*) AS headcount,SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS total_leavers,
    concat(ROUND(100.0 * SUM(CASE WHEN Attrition = 'Yes'THEN 1 ELSE 0 END) / COUNT(EmpID), 2),"%") AS attrition_rate
FROM hr
GROUP BY Gender
ORDER BY total_leavers DESC;

------------------------------- Attrition vs monthly income -------------------------------------
SELECT case when MonthlyIncome <= 3000 then "under 3k" when MonthlyIncome >3000 and MonthlyIncome <=5000 then "3k-5k" 
when MonthlyIncome > 5000 and MonthlyIncome <= 8000 then "5k-8k" when MonthlyIncome >8000 and MonthlyIncome <= 12000 then "8k-12k"
when MonthlyIncome >12000 and MonthlyIncome <= 16000 then "12k-16k" else "16k+" end as monthly_income,
    COUNT(*) AS head_count,sum(Attrition = "yes") as total_leavers,
    concat(round(100*sum(case when Attrition ="yes" then 1 else 0 end)/count(EmpID),2),"%") as attrition_rate
FROM hr
GROUP BY Monthly_Income order by total_leavers desc;
-------------------- Attrition rate is generally inceeasing at the employees whose salary is under 3k ---------

-------------------------------------- Attrition by years since last promotion -------------------------------
SELECT YearsSinceLastPromotion,headcount,total_leavers,concat(attrition_rate,"%") as attrition_rate from ( select YearsSinceLastPromotion,
    COUNT(*) AS headcount,SUM(CASE WHEN Attrition = 'Yes'THEN 1 ELSE 0 END) AS total_leavers,
    ROUND(100.0 * SUM(CASE WHEN Attrition = 'Yes'THEN 1 ELSE 0 END) / COUNT(EmpID), 2) AS attrition_rate
FROM hr
GROUP BY YearsSinceLastPromotion
ORDER BY attrition_rate desc) as x;
---------- the employees who have not got promotion around 15 years have high attrition rate ---------------------

------------------------------------------ Age group versus salary slab --------------------------------------
SELECT age_group,salary_slab,headcount,total_leavers,concat(attrition_rate,"%") as attrition_rate from
   (select CASE
        WHEN Age BETWEEN 18 AND 25 THEN '18-25'
        WHEN Age BETWEEN 26 AND 35 THEN '26-35'
        WHEN Age BETWEEN 36 AND 45 THEN '36-45'
        WHEN Age BETWEEN 46 AND 55 THEN '46-55'
        ELSE '55+'
    END AS age_group,
    CASE
        WHEN MonthlyIncome <= 3000 THEN 'Under 3k'
        WHEN MonthlyIncome <= 5000 THEN '3k-5k'
        WHEN MonthlyIncome <= 8000 THEN '5k-8k'
        WHEN MonthlyIncome <= 12000 THEN '8k-12k'
        WHEN MonthlyIncome <= 16000 THEN '12k-16k'
        ELSE '16k+'
    END AS salary_slab,
    COUNT(*) AS headcount,
    SUM(CASE WHEN Attrition = 'Yes'
        THEN 1 ELSE 0 END) AS total_leavers,
        ROUND(100.0 * SUM(CASE WHEN Attrition = 'Yes'THEN 1 ELSE 0 END) / COUNT(EmpID), 2) AS attrition_rate
FROM hr
GROUP by age_group,salary_slab
ORDER BY attrition_rate desc) as x;
----------------- the employees in th age group 18 to 25 and salary slab under 3k have the highest attrition rate ------------------



