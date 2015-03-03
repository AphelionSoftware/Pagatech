
MERGE  Paga_EDW.shared.DimUser AS Target
USING 
(
	SELECT 
		u.SourceKey,
		[DimDateOfBirthID]
		,[FirstName]
		,[MiddleName]
		,[LastName]
		,[Gender]
		,[IsEnabled]
		,DimPrimaryRoleID = r.[DimRoleID]
		,[DimCreatedDateID]
		,u.[Name]
		,SYS_CHANGE_VERSION = 0
		,SYS_CHANGE_OPERATION = 'I'
	FROM  paga_staging_initial.dbo.Users AS u
	INNER JOIN Paga_EDW.shared.dimRole AS r ON
		u.DimPrimaryRoleSourceKey = r.SourceKey
) AS Source ON 
	Target.sourcekey = Source.sourcekey


WHEN MATCHED  
THEN
	UPDATE SET 
		Target.DimDateOfBirthID = Source.DimDateOfBirthID,Target.FirstName = Source.FirstName,Target.MiddleName = Source.MiddleName,Target.LastName = Source.LastName,Target.Gender = Source.Gender,Target.IsEnabled = Source.IsEnabled,Target.DimPrimaryRoleID = Source.DimPrimaryRoleID,Target.DimCreatedDateID = Source.DimCreatedDateID,Target.Name = Source.Name,Target.SYS_CHANGE_VERSION = Source.SYS_CHANGE_VERSION,Target.SYS_CHANGE_OPERATION = Source.SYS_CHANGE_OPERATION
	
WHEN NOT MATCHED BY TARGET
THEN
	INSERT 
	(
		SourceKey, DimDateOfBirthID,FirstName,MiddleName,LastName,Gender,IsEnabled,DimPrimaryRoleID,DimCreatedDateID,Name,SYS_CHANGE_VERSION,SYS_CHANGE_OPERATION
	)
	VALUES 
	(
		Source.SourceKey, Source.DimDateOfBirthID,Source.FirstName,Source.MiddleName,Source.LastName,Source.Gender,Source.IsEnabled,Source.DimPrimaryRoleID,Source.DimCreatedDateID,Source.Name,Source.SYS_CHANGE_VERSION,Source.SYS_CHANGE_OPERATION
	);