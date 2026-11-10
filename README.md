# HR Analytics: Employee Attrition Rate Analysis

> Analyzing employee data to find out why people leave and what the company can do to retain them.

## 1. Business Problem
Employee attrition is costly. Replacing an employee means spending on hiring, training and lost productivity, and high turnover hurts team performance. This project analyzes HR data to answer:
- What is the overall attrition rate?
- Which departments, job roles and age groups lose the most employees?
- How do overtime, salary, job satisfaction and tenure affect attrition?

## 2. Dataset
## 2. Dataset

### Source
The analysis uses two HR datasets, **HR Dataset 1** and **HR Dataset 2**, combined into one file.

| Item | Details |
|------|---------|
| HR Dataset 1 | 50,000 rows |
| HR Dataset 2 | 50,000 rows |
| Total after combining | 100,000 rows |
| Duplicates removed | 10 rows |
| **Final dataset** | **99,990 rows** |
| Columns | 36 |
| Target column | `Attrition` (Yes / No) |

### Data Preparation
1. Combined both datasets into a single table
2. Removed duplicate records (100,000 → 99,990 rows)
3. Checked for missing values and incorrect data types
4. Created grouped columns (age group, salary slab, tenure band, distance band) for analysis

## 3. Tools Used

| Tool | How I used it |
|------|---------------|
| **Excel** | Prepared and combined the two HR datasets, removed duplicates, analyzed the data with pivot tables, and built an interactive dashboard |
| **SQL (MySQL Workbench)** | Imported the cleaned data from Excel and wrote SQL queries to analyze attrition by department, job role, age group, salary slab, tenure and distance |
| **Power BI** | Imported the data from MySQL Workbench and built a dashboard with KPI cards, charts and slicers |
| **Tableau** | Connected the data from Excel, analyzed it, and built 3 reports published on Tableau Public |

### Workflow

```
Excel (prepare, combine, clean)
   ├── MySQL Workbench (SQL analysis) ──► Power BI (dashboard)
   └── Tableau (analysis and 3 reports)
```

## 4. Steps Followed

### Step 1: Data Preparation (Excel)
1. Combined HR Dataset 1 and HR Dataset 2 (50,000 rows each) into one table
2. Removed duplicate records, reducing 100,000 rows to **98,990 rows**
3. Checked for missing values, incorrect data types and inconsistent entries
4. Created grouped columns: Age Group, Salary Slab, Tenure Band and Distance Band

### Step 2: Analysis in Each Tool
The data was analyzed and visualized in four tools:
- **Excel:** pivot tables and an interactive dashboard
- **MySQL Workbench:** data imported from Excel and analyzed using SQL queries
- **Power BI:** data imported from MySQL Workbench, then a dashboard was built
- **Tableau:** data connected from Excel, then 3 reports were built and published on Tableau Public

### Step 3: Dashboard Reports
Every dashboard contains 3 reports.

**Report 1: Attrition Overview**

Attrition rate and headcount by:
- Department
- Age group
- Job role
- Salary slab
- Distance band
- Tenure band

**Report 2: Attrition Driver Analysis**

Attrition rate by:
- Overtime
- Job level
- Stock option level
- Marital status
- Business travel
- Gender

**Report 3: Correlation and Cross Tabulation Analysis**

Attrition rate by:
- Monthly income
- Salary slab vs Age group
- Years since last promotion

### Step 4: Insights and Recommendations
1. Compared attrition across all groups to find the main drivers
2. Summarized the key insights
3. Wrote recommendations to reduce attrition

## 5. Key Insights

- **Overall attrition rate is 15.95%:** 15,944 of 99,990 employees have left
- **Sales** has the highest department attrition (20.59%), and **Research & Development** has the lowest (13.65%)
- **Sales Representatives leave the most** (39.01%), followed by Laboratory Technicians (23.42%). Research Directors leave the least (2.30%)
- **Young employees (18-25) leave the most** (35.38%), and the **36-45** group leaves the least (9.32%)
- **New employees leave the most** (34.53% in the first band) and **10+ year employees the least** (7.73%)
- **Low salary means high attrition:** 28.34% for under 3k and only 4.58% for 16k+
- **Overtime triples attrition:** about 32% for employees working overtime vs about 11% for those who don't
- **Single employees leave the most** (25.53%), compared with 12.25% for married and 9.59% for divorced
- **Frequent travellers leave more:** 27.21% for Travel_Frequently vs 10.11% for Non-Travel
- **Job level 1 has the highest attrition** (about 26%), and level 2 the lowest (about 10%)
- **Employees with no stock options leave more** (about 25%) than those with level 1 options (about 11%)
- **Attrition rises with distance from home:** 13.35% for 0 to 5 km and 21.41% for 21+ km
- **Gender:** male 16.79%, female 14.67%
- **Age and salary together:** employees aged 18-25 earning under 3k have the highest attrition (43%)
- **Years since last promotion** shows no clear trend, so promotion timing alone does not explain attrition

## 6. Recommendations
- (Reduce overtime in ___ department through workload balancing or hiring)
- (Review salary for roles with the highest attrition)
- (Improve onboarding and mentoring in the first 2 years)
- (Run satisfaction surveys and act on the low-scoring areas)

## 7. Dashboards

### Power BI

Report 1 : Attrition overview
<img width="1920" height="919" alt="Screenshot (209)" src="https://github.com/user-attachments/assets/a317cdb6-202d-49b5-983a-3fb38eff9c66" />

Report 2 : Attrition Driver Analysis
<img width="1920" height="897" alt="Screenshot (210)" src="https://github.com/user-attachments/assets/846ba03a-f744-4137-8135-d79b0a347f32" />

Report 3 : Correlation and Cross Tabulation Analysis
<img width="1920" height="892" alt="Screenshot (211)" src="https://github.com/user-attachments/assets/c46909fa-5805-4337-b23f-d48e72b19c53" />

### Tableau
- [View the live Tableau dashboard for Report 1 : Attrition Overview](https://public.tableau.com/views/AttritionOverview_17942297920660/Report1?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)
- [Report 2 : Attrition Driver Analysis](https://public.tableau.com/views/TableauReport_17942239119370/Report2?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)
- [Report 3 : Correlation and Cross Tabulation Analysis](https://public.tableau.com/views/CorrelationandCrossTabulationAnalysis/Report3?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

## 8. Project Structure
```
├── data/            Dataset (or link)
├── sql/             SQL queries
├── notebooks/       Python analysis
├── excel/           Excel workbook
├── dashboards/      Tableau, Power BI files and screenshots
└── README.md
```

## 9. How to Run
1. Clone the repo: `git clone https://github.com/YOUR-USERNAME/REPO-NAME.git`
2. Download the dataset and place it in the `data/` folder
3. Install libraries: `pip install pandas matplotlib seaborn jupyter`
4. Open `notebooks/attrition_analysis.ipynb` in Jupyter and run all cells
5. Open the `.twbx` in Tableau Public or the `.pbix` in Power BI Desktop to view the dashboards

## Author
**Lathika N** | B.E. EEE | Aspiring Data Analyst
GitHub: (your profile link) | LinkedIn: (your link)
