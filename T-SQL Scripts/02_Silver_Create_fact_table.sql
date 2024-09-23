/********************************************************************************************************************************
Tables in data warehousing, general concepts available here: https://learn.microsoft.com/en-us/fabric/data-warehouse/tables

Data type and size are foundamental when talking about performance.
With this script we create a set of tables with optimized data type and size.
https://learn.microsoft.com/en-us/fabric/data-warehouse/data-types
https://learn.microsoft.com/en-us/fabric/data-warehouse/tsql-surface-area

Then, we ingest data using T-SQL code and the 3 part names [DB].[Schema].[Table name]
All lakehouses and warehouses in the same workspace are accessible this way.

With this script you are creating the Fact table in the sales schema

********************************************************************************************************************************/

-- Insert data into fact_trip table
CREATE TABLE fact_TRIP
AS
SELECT      [vendorID]
            ,[lpepPickupDatetime]
            ,[lpepDropoffDatetime]
            ,[passengerCount]
            ,[tripDistance]
            ,[puLocationId]
            ,[doLocationId]
            ,[pickupLongitude]
            ,[pickupLatitude]
            ,[dropoffLongitude]
            ,[dropoffLatitude]
            ,[rateCodeID]
            ,[storeAndFwdFlag]
            ,[paymentType]
            ,[fareAmount]
            ,[extra]
            ,[mtaTax]
            ,[improvementSurcharge]
            ,[tipAmount]
            ,[tollsAmount]
            ,[ehailFee]
            ,[totalAmount]
            ,[tripType]
            ,[puMonth]
            ,[Year]
            ,[Quarter]
            ,[Month]
FROM [Bronze].[dbo].[fact_trip]
