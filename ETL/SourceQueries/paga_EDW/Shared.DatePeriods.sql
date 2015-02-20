SET NOCOUNT ON;
SET XACT_ABORT ON;
GO

SET IDENTITY_INSERT [Shared].[DatePeriods] ON;

BEGIN TRANSACTION;
INSERT INTO [Shared].[DatePeriods]([ID], [PeriodType], [Period], [Aggregate], [Number], [PeriodName], [OrderNumber], [Version])
SELECT 1, N'Cal', N'YTD', N'ToDate', 0, N'YTD', 7, 0							UNION ALL
SELECT 2, N'Cal', N'YTD', N'ToDate', 1, N'YTD Last Year', 8, 0					UNION ALL
SELECT 3, N'Cal', N'YTD', N'ToDate', 2, N'YTD 2 Years Ago', 9, 0				UNION ALL
SELECT 4, N'Cal', N'Year', N'ToDate', 1, N'Last Rolling Year', 10, 0			UNION ALL
SELECT 5, N'Cal', N'Year', N'ToDate', 2, N'Last 2 Rolling Years', 20, 0			UNION ALL
SELECT 6, N'Cal', N'Year', N'ToDate', 3, N'Last 3 Rolling Years', 30, 0			UNION ALL
SELECT 7, N'Cal', N'Year', N'Offset', 1, N'Rolling Year - Last Year', 40, 0		UNION ALL
SELECT 8, N'Cal', N'Year', N'Offset', 2, N'Rolling Year - 2 Years Ago', 50, 0	UNION ALL
SELECT 9, N'Cal', N'Year', N'ToDate', 1, N'Last Closed Year', 60, 0				UNION ALL
SELECT 10, N'Cal', N'Year', N'ToDate', 2, N'Last 2 Closed Years', 70, 0			UNION ALL
SELECT 11, N'Cal', N'Year', N'ToDate', 3, N'Last 3 Closed Years', 80, 0			UNION ALL
SELECT 12, N'Cal', N'Year', N'Offset', 1, N'Closed Year - Last Year', 90, 0		UNION ALL
SELECT 13, N'Cal', N'Year', N'Offset', 2, N'Closed Year - 2 Years Ago', 110, 0	UNION ALL
SELECT 14, N'Cal', N'Month', N'Offset', 0, N'This Month', 119, 0				UNION ALL
SELECT 15, N'Cal', N'Month', N'Offset', 1, N'Last Month', 120, 0				UNION ALL
SELECT 16, N'Cal', N'Month', N'ToDate', 2, N'Last 2 Months', 130, 0				UNION ALL
SELECT 17, N'Cal', N'Month', N'ToDate', 3, N'Last 3 Months', 140, 0				UNION ALL
SELECT 18, N'Cal', N'Month', N'ToDate', 6, N'Last 6 Months', 150, 0				UNION ALL
SELECT 19, N'Cal', N'Month', N'Offset', 2, N'2 Months Ago', 160, 0				UNION ALL
SELECT 20, N'Cal', N'Month', N'Offset', 3, N'3 Months Ago', 170, 0				UNION ALL
SELECT 21, N'Cal', N'Month', N'Offset', 6, N'6 Months Ago', 180, 0				UNION ALL
SELECT 22, N'Cal', N'Quarter', N'Offset', 1, N'Last Quarter', 190, 0			UNION ALL
SELECT 23, N'Cal', N'Quarter', N'ToDate', 2, N'Last 2 Quarters', 200, 0			UNION ALL
SELECT 24, N'Cal', N'Quarter', N'ToDate', 3, N'Last 3 Quarters', 210, 0			UNION ALL
SELECT 25, N'Cal', N'Quarter', N'ToDate', 6, N'Last 4 Quarters', 220, 0			UNION ALL
SELECT 26, N'Cal', N'Quarter', N'Offset', 2, N'2 Quarters Ago', 230, 0			UNION ALL
SELECT 27, N'Cal', N'Quarter', N'Offset', 3, N'3 Quarters Ago', 240, 0			UNION ALL
SELECT 28, N'Cal', N'Quarter', N'Offset', 4, N'4 Quarters Ago', 250, 0			UNION ALL
SELECT 29, N'Cal', N'Day', N'ToDate', 0, N'Today', 259, 0						UNION ALL
SELECT 30, N'Cal', N'Day', N'ToDate', 1, N'Yesterday', 260, 0					UNION ALL
SELECT 31, N'Cal', N'Day', N'ToDate', 7, N'This week', 270, 0					UNION ALL
SELECT 32, N'Cal', N'Day', N'ToDate', 14, N'Last 2 weeks', 280, 0				UNION ALL
SELECT 33, N'Cal', N'Day', N'ToDate', 30, N'Last 30 days', 290, 0				UNION ALL
SELECT 34, N'Cal', N'Quarter', N'Offset', 0, N'This Quarter', 185, 0			
COMMIT;
RAISERROR (N'[Shared].[DatePeriods]: Insert Batch: 1.....Done!', 10, 1) WITH NOWAIT;
GO

SET IDENTITY_INSERT [Shared].[DatePeriods] OFF;

