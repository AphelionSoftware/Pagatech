CREATE VIEW OLAP.DimTime AS
SELECT [DimTimeID]
      ,[FullTime]
      ,[HourNumber]
      ,[MinuteNumber]
      ,[SecondNumber]
      ,[TimeInSecond]
      ,[HourlyBucket]
      ,[DayTimeBucketGroupKey]
      ,[DayTimeBucket]
  FROM [Shared].[DimTime]
GO