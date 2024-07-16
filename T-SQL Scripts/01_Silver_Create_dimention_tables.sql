-- Create the dimension_date table
CREATE TABLE dimension_date (
    DateID INT,
    Date DATE,
    Day INT,
    Month INT,
    Year INT,
    DayOfWeek INT,
    IsWeekend VARCHAR(3)
);
-- Create the dimension_time table
CREATE TABLE dimension_time (
    TimeID INT,
    Time TIME(6),
    Hour INT,
    Minute INT,
    Second INT,
    PeriodOfDay VARCHAR(10)
);
-- Create the dimension_vendor table
CREATE TABLE dimension_vendor (
    VendorID INT
);



-- insert Data from Bronze to Silver tables 
INSERT INTO dimension_date (Date, Day, Month, Year, DayOfWeek, IsWeekend)
SELECT      [Date]
            ,[Day]
            ,[Month]
            ,[Year]
            ,[DayOfWeek]
            ,[IsWeekend]
FROM [Bronze].[dbo].[dimension_date] 

-- Insert data into dimension_time table
INSERT INTO dimension_time (Time, Hour, Minute, Second, PeriodOfDay)
SELECT      [Time]
            ,[Hour]
            ,[Minute]
            ,[Second]
            ,[PeriodOfDay]
FROM [Bronze].[dbo].[dimension_time] 

-- Insert data into dimension_vendor table
INSERT INTO dimension_vendor (VendorID)
SELECT DISTINCT
    vendorID
FROM [Bronze].[dbo].[dimension_vendor] 
