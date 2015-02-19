	
CREATE VIEW OLAP.Shared_DimTime AS
	(
		SELECT 
			edw.DimTimeID,edw.FullTime,edw.HourNumber,edw.MinuteNumber,edw.SecondNumber,edw.TimeInSecond,edw.HourlyBucket,edw.DayTimeBucketGroupKey,edw.DayTimeBucket
		FROM Shared.DimTime AS edw
	
	);