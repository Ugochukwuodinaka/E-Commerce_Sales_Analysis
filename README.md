# E-Commerce Sales Analysis
![](images/E-Commerce%20Sales%20Analysis%20Photo.jpg)


## Project Overview
### Introduction:
The E-Commerce Sales Analysis project is designed to offer a detailed examination of the profitability and performance of e-commerce sales within the Indian market. This analysis focuses on data collected from various sales channels over a four-month period, from March 2022 to June 2022, encompassing a wide range of products. Using the outcome of this analysis project, retailers and digital marketers can measure the performance of their campaigns more accurately and efficiently.


## Objectives:
The primary objectives of this E-Commerce Sales Analysis project are:
- Evaluate Amazon's order status by product quantity to understand fulfillment efficiency.
- Analyze Amazon's sales data segmented by order status to identify key factors impacting sales completion.
- Examine Amazon's sales by product size to determine which sizes are most profitable.
- Identify trends in Amazon's revenue over the months to track growth and seasonal impacts.
- Analyze Amazon's revenue trends by product category to pinpoint top-performing categories.
- Evaluate Amazon's sales trends by ship-location to identify regional sales patterns.
- Assess international sales volume by product size to determine global demand patterns.
- Identify the top 10 customers by order value and quantity to recognize key customer segments.
- Determine the top 10 stock items by product category to manage inventory effectively.
- Analyze total stock by product size to ensure optimal stock levels across all sizes.



### Expected Outcomes:
- __Product Quantity Order Status Insights:__ Detailed insights into Amazon's order pattern by product quantity, fulfillment efficiency, and areas for improvement.
- __Sales Performance Reports:__ Comprehensive reports on sales performance by order status, aiding in understanding sales fulfilment patterns.
- __Product Size Profitability:__ Clear identification of which product sizes drive the most sales and profit.
- __Revenue Trend Analysis:__ Monthly revenue trend analysis providing insights into growth patterns and seasonal effects.
- __Category Performance Insights:__ Detailed revenue trends by product category, highlighting top-performing categories.
- __Regional Sales Patterns:__ Geographic sales trend analysis by ship location to inform regional marketing and distribution strategies.
- __Global Sales Insights:__ Insights into international sales volumes by product size, guiding global market strategies.
- __Key Customer Identification:__ Identification of top 10 customers, aiding in targeted marketing and customer retention efforts.
- __Inventory Management:__ Reports on top stock items by category, assisting in effective inventory management.
- __Stock Level Optimization:__ Analysis of total stock by product size to ensure balanced and sufficient stock levels.

The findings from this project will enable retailers and digital marketers to:
- Measure the performance of their e-commerce campaigns more accurately.
- Make data-driven decisions to enhance profitability.
- Understand market dynamics and consumer behavior in the Indian e-commerce space.

This project aims to bridge the gap between raw sales data and strategic business decisions, providing valuable insights that can drive growth and success in the competitive e-commerce market.


### About The Dataset
This dataset provides a comprehensive overview of e-commerce sales data from different channels covering a variety of products.The dataset also provides an in-depth look at the profitability of e-commerce sales. It contains data on a variety of sales channels, including Shiprocket and INCREFF, as well as financial information on related expenses and profits. The columns contain data such as SKU codes, design numbers, stock levels, product categories, sizes and colors. In addition to this we have included the MRPs across multiple stores like Ajio MRP, Amazon MRP, Amazon FBA MRP, Flipkart MRP, Limeroad MRP Myntra MRP and PaytmMRP along with other key parameters like amount paid by customer for the purchase , rate per piece for every individual transaction Also we have added transactional parameters like Date of sale months category fulfilledby B2b Status Qty Currency Gross amt. This dataset was provided by [Quantum Analytics](https://www.quantumanalyticsco.org/). The tables that contains the raw dataset for this analysis has tables sizes of over 100mb, hence it was too large to upload to github. The data_dictionary table makes a description of all the fields in the key tables of this dataset for a better understanding of them.

Below is a table that describes all the fields in all the tables in this dataset.

| Table                              | Field                    | Description                            |            
|:-----------------------------------|:------------------------ |:-------------------------------------- |
|Cloud Warehouse Compersion Chart    | Shiprocket               | Contains data related to the profitability of e-commece sales throgh shiprocket    |
|                                    | INCREFF                  | Contains data related to the profitability of e-commerce sales through INCREFF     |
|Sales_Report                        | SKU Code                 | Unique identifier for each product         |
|                                    | Design No                | Unique identifier for each design         |
|                                    | Stock                    | Number of items in stock        |
|                                    | Category                 | Type of product         |
|                                    | Size                     | Size of product        |
|                                    | Color                    | Color of product         |
|P_&_L_March_2021                    | Category                 | Type of product         |
|                                    | SKU                      | Unique identifier for each product         |
|                                    | Catelog                  | Category of product        |
|                                    | Weight                   | Weight of product         |
|                                    | TP1                      | Price of the product on the first third-party platform        |
|                                    | TP2                      | Price of the product on the second third-party platform        |
|                                    | MRP Old                  | Original price of product         |
|                                    | Final MRP                | Final price of product after discount       |
|                                    | Ajio MRP                 | Price of the product on Ajio         |
|                                    | Amazon FBA MRP           | Price of the product on Amazon FBA           |
|                                    | Flipkart MRP             | Price of the product on Flipkart       |
|                                    | Limeroad MRP             | Price of the product on Limeroad         |
|                                    | Myntra MRP               | Price of the product on Myntra           |
|                                    | Paytm MRP                | Price of the product on Paytm       |
|                                    | Snapdeal MRP             | Price of the product on Snapdeal         |
|May-2022                            | SKU                      | Unique identifier for each product         |
|                                    | Catelog                  | Category of product        |
|                                    | Weight                   | Weight of product         |
|                                    | MRP Old                  | Original price of product         |
|                                    | Final MRP Old            | Final price of product after discounts       |
|                                    | Ajio MRP                 | Price of the product on Ajio         |
|                                    | Amazon FBA MRP           | Price of the product on Amazon FBA           |
|                                    | Flipkart MRP             | Price of the product on Flipkart       |
|                                    | Limeroad MRP             | Price of the product on Limeroad         |
|                                    | Myntra MRP               | Price of the product on Myntra           |
|                                    | Paytm MRP                | Price of the product on Paytm       |
|                                    | Snapdeal MRP             | Price of the product on Snapdeal         |
|                                    | TP1 & TP2 MRP Old        | Original price of the product           |
|Amazon_Sale_Report                  | Category                 | Type of product       |
|                                    | Size                     | Size of product         |
|                                    | Date                     | Date of the sale           |
|                                    | Status                   | Status of the sale       |
|                                    | Fulfilment               | Metho of fulfilment         |
|                                    | Style                    | Style of the product           |
|                                    | SKU                      | Stock Keeping Unit       |
|                                    | ASIN                     | Amazon Standard Identification Number         |
|                                    | Courier Status           | Status of the courier           |
|                                    | Qty                      | Quanity of the product     |
|                                    | Amount                   | Amount of the sale         |
|                                    | B2B                      | Business to business sale           |
|                                    | Currency                 | The currency used for the sale       |
|International_Sale_Report           | Style                    | Style of the product           |
|                                    | SKU                      | Stock Keeping Unit       |
|                                    | Size                     | Size of product         |
|                                    | Date                     | Date of the sale           |
|                                    | Month                    | Month of the sale           |
|                                    | Customer                 | Name of the customer         |
|                                    | PCS                      | Number of pieces sold           |
|                                    | Rate                     | Rate per piece         |
|                                    | GROSS AMT                | Total amount of sales           |
|Expense_IGF                         | Received Amount          | The total amount of money received from sales           |




### Skills Utilized
1. Data Cleaning
2. Data Modelling
3. Data Visualiziation
4. Descriptive Analytics
5. Critical Thinking and Problem Solving
6. Communication and Reporting

### Tools Used
1. MS SQL Server
    - Was used to:
        1. Extract,
        2. Clean,
        3. Transform,
        4. Load all the datasets for this analysis.
     
2. Tableau (Was used to create dashboards for this analysis)
    - The following Tableau were incorporated:
        1. Calculated Fields
        2. Geospatial Analysis
        3. Page Navigation
        4. Filters
        5. Tooltips
        6. Buttons




### Data Cleaning, Transformation and Loading using MS SQL Server:
1. Made sure that all the data types of the tables in this datatset are of the right data type.
2. Changed the data type of all the table columns with the wrong data type to the right data type.
3. Replaced the null cells of the 'Amount' column of "Amazon Sale Rreport" table with "0".
4. Deleted the scanty 'promotion-ads' column of the "Amazon Sale Report" table as it has little or no value in the table or in my analysis.
5. Deleted the scanty 'Unnamed 22' column of the "Amazon Sale Report" table as it has little or no importance in the table or in my analysis.
6. Deleted the scanty 'fulfilled_by' column of the "Amazon Sale Report" table as it is neither important in the table nor in my analysis.
7. Replace the null cells of the 'Stock' column of the "International Sale Report" table with "0".
8. Used the median weight value from the value in all the cells of the weight column in the "P & L March 2021" table to replace the null cells of the 'Weight' column.
9. Replaced the null cells of the 'TP_2' column of "P & L March 2021" table with "0".
10. Used the median weight value from the value in all the cells of the weight column in the "May-2022" table to replace the null cells of the 'Weight' columns.
11. Replaced the null cells of all the MRP columns in "May-2022" table with "0".
12. Replaced the null cells of all the MRP columns in the "P & L March 2021" table with "0".




**MS SQL Server View**

Sql Query Screenshot                                                               |                                
:---------------------------------------------------------------------------------:|
![](images/MS_Sql_Server_Screenshot.png)    

You can preview the MYSQL query file [here](Mexican_Restaurant_Rating_Analysis_Project.sql)




## Visualization in Tableau:
#### Report View 1
![](images/E-COMMERCE_SALES_ANALYSIS_1.png)

#### Report View 2
![](images/E-COMMERCE_SALES_ANALYSIS_2.png)

