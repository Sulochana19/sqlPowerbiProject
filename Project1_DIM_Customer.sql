/* Cleansed DIM_Customers Table */
SELECT 
  c.[CustomerKey], 
  -- ,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  c.[FirstName], 
  --,[MiddleName]
  c.[LastName], 
  c.[FirstName] + ' ' + [LastName] AS [FullName], 
  --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  CASE c.[Gender] WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS [Gender], 
  
  /*,[EmailAddress]
        ,[YearlyIncome]
        ,[TotalChildren]
        ,[NumberChildrenAtHome]
        ,[EnglishEducation]
        ,[SpanishEducation]
        ,[FrenchEducation]
        ,[EnglishOccupation]
        ,[SpanishOccupation]
        ,[FrenchOccupation]
        ,[HouseOwnerFlag]
        ,[NumberCarsOwned]
        ,[AddressLine1]
        ,[AddressLine2]
        ,[Phone]
      */
  c.[DateFirstPurchase], 
  --,[CommuteDistance]
  g.[City] AS [Customer City] -- Joined in Customer City from Geography Table
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] AS c 
  LEFT JOIN [AdventureWorksDW2019].[dbo].[DimGeography] AS g ON g.GeographyKey = c.GeographyKey 
ORDER BY 
  CustomerKey ASC -- Ordered List by CustomerKey
