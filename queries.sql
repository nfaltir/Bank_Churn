/*CHURN BY EDUCATION LEVEL*/
SELECT 
    Education_Level,
    AVG(Customer_Age),
    COUNT(CASE WHEN Attrition_Flag = "Attrited Customer" THEN 1 END) AS Churn_Count,
    COUNT(CASE WHEN Attrition_Flag = "Attrited Customer" THEN 1 END)/COUNT(CASE WHEN Attrition_Flag = "Existing Customer" THEN 1 END) * 100 AS Churn_Percentage
From bankchurners GROUP BY Education_Level;

/*CHURN BY INCOME LEVEL*/
USE bank;
SELECT 
	Income_Category,
    AVG(Total_Trans_Ct),
    AVG(Total_Trans_Amt),
    COUNT(CASE WHEN Attrition_Flag = "Attrited Customer" THEN 1 END) AS Churn_Count,
    COUNT(CASE WHEN Attrition_Flag = "Attrited Customer" THEN 1 END)/COUNT(CASE WHEN Attrition_Flag = "Existing Customer" THEN 1 END) * 100 AS Churn_Percentage
From bankchurners GROUP BY Income_Category;

/*CHURN BY MARITAL STATUS*/
SELECT 
	Marital_Status,
    AVG(Total_Trans_Ct),
    AVG(Total_Trans_Amt),
    COUNT(CASE WHEN Attrition_Flag = "Attrited Customer" THEN 1 END) AS Churn_Count
From bankchurners GROUP BY Marital_Status;

/*CHURN BY PRODUCT TYPE*/
SELECT 
	Card_Category,
    COUNT(CLIENTNUM) AS Customer_Weight,
    COUNT(CASE WHEN Attrition_Flag = "Attrited Customer" THEN 1 END) AS Churn_Count,
    COUNT(CASE WHEN Attrition_Flag = "Attrited Customer" THEN 1 END)/COUNT(CLIENTNUM) * 100 AS Churn_Percentage
From bankchurners Group By Card_Category;

/*FIND AVG CREDIT CARD LIMIT FOR ALL CUSTOMERS GROUP BY CREDIT CARD TYPE */
SELECT 
	Card_Category,
    AVG(Credit_Limit),
    AVG(Avg_Utilization_Ratio * 100) AS AVG_Credit_Utilization
From bankchurners Group By Card_Category;


/*EXPLORE CUSTOMERS BY PRODUCT TYPE FOR PATTERNS*/
SELECT 
	Card_Category,
    /* COUNT(CLIENTNUM)/10127 * 100 AS Customer_Weight */
    COUNT(CLIENTNUM) AS Customer_Weight,
    AVG(Credit_Limit),
    AVG(Total_Trans_Amt),
    AVG(Avg_Utilization_Ratio * 100) AS AVG_Credit_Utilization,
    AVG(Total_Revolving_Bal),
    Months_on_book,
    Education_Level
From bankchurners Group By Card_Category;


/*TOTAL NUMBER OF CUSTOMERS*/
USE bank;
SELECT 
	count(distinct(ClIENTNUM))
FROM 
	bankchurners;


/*Average Age of Customers*/
USE bank;
SELECT 
	AVG(Customer_Age) Average_Age
FROM 
	bankchurners;

/*Average Age by Gender*/
USE bank;
SELECT 
	Gender, AVG(Customer_Age) Average_Age
FROM 
	bankchurners GROUP BY Gender;



/*Number of Education  Levels*/
USE bank;
SELECT 
	Education_level, COUNT(Education_level) Eduation_level
FROM 
	bankchurners GROUP BY Education_level;

/*SHOWS AVERAGE AGE OF CUSTOMER AND THEIR EDUCATION*/
SELECT 
	Education_level, AVG(Customer_Age) Average_Age
FROM 
	bankchurners GROUP BY Education_level;
/*Average Income  of Customers*/


/*Dependent Count by Sex*/
USE bank;
SELECT 
	Gender, AVG(Dependent_count) Avg_Dependents
FROM 
	bankchurners GROUP BY Gender;

