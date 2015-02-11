SELECT
	ct.SYS_CHANGE_OPERATION, 
	SYS_CHANGE_VERSION = ct.as_of_change_version,
	SourceKey,
	DimUserSourceKey,
	DimRoleSourceKey,
	RolePriority
FROM
(
	SELECT
		SourceKey = ur.UserRoleId,
		DimUserSourceKey = UserID,
		DimRoleSourceKey = ur.RoleID,
		RolePriority = ur.roleNum
	FROM 
	(
		SELECT 
			ROW_NUMBER() OVER (PARTITION BY u.UserID ORDER BY u.RoleID DESC) AS roleNum,
			u.[UserId],
			u.[RoleId],
			u.userRoleId
		FROM [dbo].[UserRole] AS u
	) AS ur
) AS base_query
