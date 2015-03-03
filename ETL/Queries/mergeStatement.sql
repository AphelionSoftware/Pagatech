
MERGE  Paga_EDW.Finance.DimFinancialHoldingAccount AS Target
USING 
(
	SELECT
		*
	FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY stg.SourceKey ORDER BY stg.SYS_CHANGE_VERSION DESC) AS rn,
			stg.*
		FROM Paga_Staging.staging.Finance_DimFinancialHoldingAccount AS stg
		INNER JOIN
		(
		SELECT DISTINCT SourceKey from Paga_Staging.staging.Finance_DimFinancialHoldingAccount WHERE SYS_CHANGE_VERSION > 0
		EXCEPT
		SELECT ha.sourcekey FROM Finance.DimFinancialHoldingAccount as ha
		) AS list ON 
			stg.sourcekey = list.sourcekey
	) as x
	WHERE x.rn = 1
) AS Source ON 
	Target.sourcekey = Source.sourcekey


WHEN MATCHED  
THEN
	UPDATE SET 
		Target.SYS_CHANGE_OPERATION = Source.SYS_CHANGE_OPERATION,
		Target.SYS_CHANGE_VERSION = Source.SYS_CHANGE_VERSION, 
		Target.SourceKey = Source.SourceKey,
		Target.Name = Source.Name,
		Target.AccountNumber = Source.AccountNumber,
		Target.RestrictedBalance = Source.RestrictedBalance,
		Target.OpeningBalance = Source.OpeningBalance,
		Target.TotalBalance = Source.TotalBalance
	
WHEN NOT MATCHED BY TARGET
THEN
	INSERT 
	(
		[SourceKey],
		[Name],
		[AccountNumber],
		[RestrictedBalance],
		[OpeningBalance],
		[TotalBalance],
		[SYS_CHANGE_VERSION],
		[SYS_CHANGE_OPERATION]
	)
	VALUES 
	(
		Source.[SourceKey],
		Source.[Name],
		Source.[AccountNumber],
		Source.[RestrictedBalance],
		Source.[OpeningBalance],
		Source.[TotalBalance],
		Source.[SYS_CHANGE_VERSION],
		Source.[SYS_CHANGE_OPERATION]
	);