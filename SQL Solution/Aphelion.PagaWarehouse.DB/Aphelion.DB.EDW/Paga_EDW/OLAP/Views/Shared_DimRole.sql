	
CREATE VIEW OLAP.Shared_DimRole AS
	(
		SELECT 
			edw.DimRoleID,edw.SourceKey,edw.SystemDescription,edw.Name,edw.TextDesciption
		FROM Shared.DimRole AS edw
		WHERE edw.IsActive = 1
	);