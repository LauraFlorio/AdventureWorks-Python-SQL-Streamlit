select
	fis.SalesOrderNumber,
	year(fis.OrderDate) 'Year',
	datename(mm, fis.OrderDate) 'Month',
	fis.SalesAmount,
	fis.OrderQuantity,
	fis.TotalProductCost,
	dc.FirstName + ' ' + dc.LastName 'Customer',
	dc.Gender,
	dst.SalesTerritoryCountry,
	dpc.EnglishProductCategoryName
from FactInternetSales fis
left join DimSalesTerritory dst 
	on fis.SalesTerritoryKey = dst.SalesTerritoryKey
	left join DimCustomer dc
		on fis.CustomerKey = dc.CustomerKey
		left join DimProduct dp
			on fis.ProductKey = dp.ProductKey
			left join DimProductSubcategory dps
				on dp.ProductSubcategoryKey = dps.ProductSubcategoryKey
				left join DimProductCategory dpc
					on dps.ProductCategoryKey = dpc.ProductCategoryKey


select @@SERVERNAME


