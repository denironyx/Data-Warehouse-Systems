-- This view connects the DimGeography table to DimSalesTerritory table by the SalesTerritoryKey
CREATE VIEW [dbo].[Total_DimTerritoryAndGeography]
AS
SELECT dbo.DimGeography.City,
	dbo.DimGeography.StateProvinceCode,
	dbo.DimGeography.StateProvinceName,
	dbo.DimGeography.CountryRegionCode,
	dbo.DimGeography.EnglishCountryRegionName,
	dbo.DimSalesTerritory.SalesTerritoryGroup,
	dbo.DimSalesTerritory.SalesTerritoryRegion
FROM	dbo.DimGeography INNER JOIN
dbo.DimSalesTerritory ON dbo.DimGeography.SalesTerritoryKey = dbo.DimSalesTerritory.SalesTerritoryKey;