-- Create aggregating view of DiscountAmount, ProductStandardCost, TotalProductCost, SalesAmount
CREATE VIEW	[dbo].[Total_FactInternetSales]
AS
SELECT SUM(DiscountAmount) AS Total_DiscountAmount,
	   SUM(ProductStandardCost) AS Total_ProductStandardCost,
	   SUM(TotalProductCost) AS Total_TotalProductCost,
	   SUM(SalesAmount) AS Total_SalesAmount,
	   OrderDate,
	   CustomerKey,
	   CurrencyKey
FROM		dbo.FactInternetSales
GROUP BY OrderDate, CustomerKey, CurrencyKey;

--  SCHEMABINDING creates a relationship between the view and underlining tables

ALTER VIEW	[dbo].[Total_FactInternetSales]
WITH SCHEMABINDING
AS
SELECT SUM(DiscountAmount) AS Total_DiscountAmount,
	   SUM(ProductStandardCost) AS Total_ProductStandardCost,
	   SUM(TotalProductCost) AS Total_TotalProductCost,
	   SUM(SalesAmount) AS Total_SalesAmount,
	   OrderDate,
	   CustomerKey,
	   CurrencyKey,
	   COUNT_BIG(*) AS RecordCount
FROM		dbo.FactInternetSales
GROUP BY OrderDate, CustomerKey, CurrencyKey;

-- Create the unique cluster index
CREATE UNIQUE CLUSTERED INDEX [IX_Total_FactInternetSales]
ON	[dbo].[Total_FactInternetSales] (OrderDate, CustomerKey, CurrencyKey);