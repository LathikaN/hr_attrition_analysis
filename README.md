# HR Analytics: Employee Attrition Rate Analysis

> Analyzing employee data to find out why people leave and what the company can do to retain them.

## 1. Business Problem
Employee attrition is costly. Replacing an employee means spending on hiring, training and lost productivity, and high turnover hurts team performance. This project analyzes HR data to answer:
- What is the overall attrition rate?
- Which departments, job roles and age groups lose the most employees?
- How do overtime, salary, job satisfaction and tenure affect attrition?

## 2. Dataset
- **Source:** (Kaggle / company data / other, with link)
- **Rows:** ___ employees
- **Columns:** ___ (Age, Department, JobRole, MonthlyIncome, OverTime, JobSatisfaction, YearsAtCompany, Attrition, etc.)
- **Target column:** `Attrition` (Yes / No)
- **Note:** The file is large (32.5 MB). Download it here: (paste link)

## 3. Tools Used
| Tool | Purpose |
|------|---------|
| SQL | Querying and aggregating attrition by group |
| Python (Pandas, Matplotlib, Seaborn) | Cleaning, EDA, visualization |
| Excel | Pivot tables and quick summaries |
| Tableau | Interactive dashboard |
| Power BI | Dashboard and KPI reporting |

## 4. Steps Followed
1. **Data cleaning:** checked missing values, duplicates, data types, and removed irrelevant columns
2. **Feature preparation:** created age groups, income bands and tenure bands
3. **Exploratory analysis:** attrition rate by department, role, age, salary, overtime and satisfaction
4. **SQL analysis:** group-wise attrition queries (see `sql/`)
5. **Visualization:** built dashboards in Tableau and Power BI
6. **Insights and recommendations:** summarized findings for decision-makers

## 5. Key Insights
- Overall attrition rate is **___%** (___ out of ___ employees)
- **___** department has the highest attrition (___%)
- Employees working **overtime** have an attrition rate of ___% vs ___% for those who don't
- Attrition is highest in the **___–___ age group**
- Employees with **low monthly income** (below ___) leave more often
- Most employees leave within the **first ___ years**
- Low job satisfaction scores are linked to ___% attrition

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
