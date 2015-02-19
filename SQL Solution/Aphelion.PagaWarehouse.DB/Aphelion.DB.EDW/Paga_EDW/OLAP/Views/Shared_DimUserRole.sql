	
CREATE VIEW OLAP.Shared_DimUserRole AS
	(
		SELECT 
			edw.DimUserRoleID,edw.SourceKey,edw.Name,edw.DimUserID,edw.DimRoleID,edw.RolePriority
		FROM Shared.DimUserRole AS edw
		WHERE edw.IsActive = 1
	);