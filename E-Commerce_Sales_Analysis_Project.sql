-- Data Cleaning, Transformation and Loading using MS SQL Server:
-- 1. Made sure that all the data types of the tables in this dataset are of the right data type.
-- 2. Replaced the null cells of the 'Amount' column of "Amazon Sale Report" table with "0".
-- 3. Dropped the scanty 'promotion-ads' column of the "Amazon Sale Report" table as it has little or no value in the table or in my analysis.
-- 4. Dropped the scanty 'Unnamed 22' column of the "Amazon Sale Report" table as it has little or no importance in the table or in my analysis.
-- 5. Dropped the scanty 'fulfilled_by' column of the "Amazon Sale Report" table as it is neither important in the table nor in my analysis.
-- 6. Replaced the Null cells in the "currency" column of the "Amazon Sale Report" table with "INR"
-- 7. Replaced the null cells of the 'Stock' column of the "International Sale Report" table with "0".
-- 8. Used the median weight value from the value in all the cells of the weight column in the "May 2022" table to replace the null cells of the 'Weight' column.
-- 9. Used the median weight value from the value in all the cells of the weight column in the "P & L March 2021" table to replace the null cells of the 'Weight' column.
-- 10. Rounded up the "TP_2" column in the "P & L March 2021" table to two decimal places.
-- 11. Replaced the null cells of the 'TP_1' and 'TP_2' column of "P & L March 2021" table with "0".
-- 12. Replaced the null cells of all the MRP columns in "May-2022" table with "0".
-- 13. Replaced the null cells of all the MRP columns in the "P & L March 2021" table with "0".


-- 1. Make sure that all the data types of the tables in this dataset are of the right data type.
EXEC sp_help 'dbo.Amazon_Sale_Report';
EXEC sp_help 'dbo.international_Sale_Report';
EXEC sp_help 'dbo.[May-2022]';
EXEC sp_help 'dbo.P_L_March_2021';
EXEC sp_help 'dbo.Sale_Report';


SELECT * FROM dbo.Amazon_Sale_Report;
SELECT * FROM dbo.International_sale_Report;
SELECT * FROM dbo.[May-2022];
SELECT * FROM dbo.P_L_March_2021;
SELECT * FROM dbo.Sale_Report;


-- 2. Replace the null cells of the 'Amount' column of "Amazon Sale Report" table with "0".
UPDATE dbo.Amazon_Sale_Report
SET Amount = 0
WHERE Amount IS NULL;
SELECT * FROM dbo.Amazon_Sale_Report;


-- 3. Delete the scanty 'promotion-ads' column of the "Amazon Sale Report" table as it has little or no value in the table or in my analysis.
ALTER TABLE dbo.Amazon_Sale_Report
DROP COLUMN promotion_ids;
SELECT * FROM dbo.Amazon_Sale_Report;


-- 4. Delete the scanty 'Unnamed 22' column of the "Amazon Sale Report" table as it has little or no importance in the table or in my analysis.
ALTER TABLE dbo.Amazon_Sale_Report
DROP COLUMN Unnamed_22;
SELECT * FROM dbo.Amazon_Sale_Report;

-- 5. Delete the scanty 'fulfilled_by' column of the "Amazon Sale Report" table as it is neither important in the table nor in my analysis.
ALTER TABLE dbo.Amazon_Sale_Report
DROP COLUMN fulfilled_by;
SELECT * FROM dbo.Amazon_Sale_Report;


-- 6. Replace the Null cells in the "currency" column of the "Amazon Sale Report" table with "INR"
UPDATE dbo.Amazon_Sale_Report
SET currency = 'INR'
WHERE currency IS NULL;
SELECT * FROM dbo.Amazon_Sale_Report;


-- 7. Replace the null cells of the 'Stock' column of the "International Sale Report" table with "0".
UPDATE dbo.International_sale_Report
SET STOCK = 0
WHERE STOCK IS NULL;
SELECT * FROM dbo.International_sale_Report;


-- 8. Use the median weight value from the value in all the cells of the weight column in the "May 2022" table to replace the 
   -- null cells of the 'Weight' column.
 UPDATE dbo.[May-2022]
 SET Weight = ROUND(Weight,1);

 WITH WeightCTE AS (
   SELECT
	 Weight,
	 ROW_NUMBER() OVER (ORDER BY Weight)AS RowAsc,
	 ROW_NUMBER() OVER (ORDER BY Weight DESC) AS RowDesc,
	 COUNT(*) OVER () AS TotalCount
   FROM dbo.[May-2022]
   WHERE Weight IS NOT NULL
),
MedianCTE AS (
  SELECT
	AVG(Weight) AS MedianWeight
  FROM WeightCTE
  WHERE
	RowAsc IN ((TotalCount + 1)/2, (TotalCount +2)/2)
)
UPDATE dbo.[May-2022]
SET Weight = (SELECT MedianWeight FROM MedianCTE)
WHERE Weight IS NULL;

SELECT * FROM dbo.[May-2022];


-- 9. Use the median weight value from the value in all the cells of the weight column in the "P & L March 2021" table to replace the 
-- null cells of the 'Weight' column.
UPDATE dbo.P_L_March_2021
SET Weight = ROUND(Weight,1);

 
 WITH WeightCTE AS (
   SELECT
	 Weight,
	 ROW_NUMBER() OVER (ORDER BY Weight)AS RowAsc,
	 ROW_NUMBER() OVER (ORDER BY Weight DESC) AS RowDesc,
	 COUNT(*) OVER () AS TotalCount
   FROM dbo.P_L_March_2021
   WHERE Weight IS NOT NULL
),
MedianCTE AS (
  SELECT
	AVG(Weight) AS MedianWeight
  FROM WeightCTE
  WHERE
	RowAsc IN ((TotalCount + 1)/2, (TotalCount +2)/2)
)
UPDATE dbo.P_L_March_2021
SET Weight = (SELECT MedianWeight FROM MedianCTE)
WHERE Weight IS NULL;

SELECT * FROM dbo.P_L_March_2021;


-- 10. Round up the "TP_2" column in the "P & L March 2021" table to one decimal place.
UPDATE dbo.P_L_March_2021
SET TP_2 = ROUND(TP_2, 1);
SELECT * FROM dbo.P_L_March_2021;

-- 11. Replace the null cells of the 'TP_1' and 'TP_2' column of "P & L March 2021" table with "0".
UPDATE dbo.P_L_March_2021
SET TP_1 = ROUND(TP_1, 2);

UPDATE dbo.P_L_March_2021
SET TP_1 = 0
WHERE TP_1 IS NULL;


UPDATE dbo.P_L_March_2021
SET TP_2 = ROUND(TP_2, 2);

UPDATE dbo.P_L_March_2021
SET TP_2 = 0
WHERE TP_2 IS NULL;

SELECT * FROM dbo.P_L_March_2021;


-- 12. Replace the null cells of all the MRP columns in "May-2022" table with "0".
UPDATE dbo.[May-2022]
SET MRP_Old = COALESCE(MRP_Old, 0),
    Final_MRP_Old = COALESCE(Final_MRP_Old, 0),
	Ajio_MRP = COALESCE(Ajio_MRP, 0),
	Amazon_MRP = COALESCE(Amazon_MRP, 0),
	Amazon_FBA_MRP = COALESCE(Amazon_FBA_MRP, 0),
	Flipkart_MRP = COALESCE(Flipkart_MRP, 0),
	Limeroad_MRP = COALESCE(Limeroad_MRP, 0),
	Myntra_MRP = COALESCE(Myntra_MRP, 0),
	Paytm_MRP = COALESCE(Paytm_MRP, 0),
	Snapdeal_MRP = COALESCE(Snapdeal_MRP, 0);

SELECT * FROM dbo.[May-2022];


-- 13. Replace the null cells of all the MRP columns in the "P & L March 2021" table with "0".
UPDATE dbo.P_L_March_2021
SET MRP_Old = COALESCE(MRP_Old, 0),
    Final_MRP_Old = COALESCE(Final_MRP_Old, 0),
	Ajio_MRP = COALESCE(Ajio_MRP, 0),
	Amazon_MRP = COALESCE(Amazon_MRP, 0),
	Amazon_FBA_MRP = COALESCE(Amazon_FBA_MRP, 0),
	Flipcart_MRP = COALESCE(Flipcart_MRP, 0),
	Limeroad_MRP = COALESCE(Limeroad_MRP, 0),
	Myntra_MRP = COALESCE(Myntra_MRP, 0),
	Paytm_MRP = COALESCE(Paytm_MRP, 0),
	Snapdeal_MRP = COALESCE(Snapdeal_MRP, 0);

SELECT * FROM dbo.P_L_March_2021;