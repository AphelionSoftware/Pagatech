CREATE view test.AgentUsers
AS
(
	SELECT 
		* 
	FROM OLAP.DimUser as x
	WHERE 
		EXISTS
		(
			SELECT 1 FROM mapping.UserRoleMapping
			WHERE	
				dimUserID = x.UserDimUserID
				AND Mapping.UserRoleMapping.DimRoleID = 4
		)
)