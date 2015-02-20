
CREATE VIEW [OLAP].[DatePeriods] AS
SELECT
      [PeriodType]
      ,[Period]
      ,[Aggregate]
      ,[Number]
      ,[PeriodName]
      ,[OrderNumber]
  FROM [Shared].[DatePeriods]