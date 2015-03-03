
----SELECT
----	*
----FROM
----(
----	SELECT
----		ROW_NUMBER() OVER (PARTITION BY stg.SourceKey ORDER BY stg.SYS_CHANGE_VERSION DESC) AS rn,
----		stg.*
----	FROM Paga_Staging.staging.Finance_DimFinancialHoldingAccount AS stg
----	INNER JOIN
----	(
----	SELECT DISTINCT SourceKey from Paga_Staging.staging.Finance_DimFinancialHoldingAccount WHERE SYS_CHANGE_VERSION > 0
----	EXCEPT
----	SELECT ha.sourcekey FROM Finance.DimFinancialHoldingAccount as ha
----	) AS list ON 
----		stg.sourcekey = list.sourcekey
----) as x
----WHERE x.rn = 1




	--SELECT
	--	*
	--FROM
	--(
	--	SELECT
	--		ROW_NUMBER() OVER (PARTITION BY stg.SourceKey ORDER BY stg.SYS_CHANGE_VERSION DESC) AS rn,
	--		stg.*
	--	FROM Paga_Staging_Initial.staging.Shared_DimPagaAccount2 AS stg
	--	INNER JOIN
	--	(
	--	SELECT DISTINCT SourceKey from Paga_Staging_Initial.staging.Shared_DimPagaAccount2 WHERE SYS_CHANGE_VERSION > 0
	--	EXCEPT
	--	SELECT ha.sourcekey FROM shared.DimPagaAccount as ha
	--	) AS list ON 
	--		stg.sourcekey = list.sourcekey
	--) as x
	--WHERE x.rn = 1

	

	--SELECT
	--	*
	--FROM
	--(
	--	SELECT
	--		ROW_NUMBER() OVER (PARTITION BY stg.SourceKey ORDER BY stg.SYS_CHANGE_VERSION DESC) AS rn,
	--		stg.*
	--	FROM Paga_Staging.staging.Shared_DimUser AS stg
	--	INNER JOIN
	--	(
	--	SELECT DISTINCT SourceKey from Paga_Staging.staging.Shared_DimUser WHERE SYS_CHANGE_VERSION > 0
	--	EXCEPT
	--	SELECT edw.sourcekey FROM shared.DimUser as edw
	--	) AS list ON 
	--		stg.sourcekey = list.sourcekey
	--) as x


--	SELECT
--		*
--	FROM
--	(
--		SELECT
--			ROW_NUMBER() OVER (PARTITION BY stg.SourceKey ORDER BY stg.SYS_CHANGE_VERSION DESC) AS rn,
--			stg.*
--		FROM Paga_Staging.Updates.Shared_DimOrganization AS stg
--		INNER JOIN
--		(
--		SELECT DISTINCT SourceKey from Paga_Staging.staging.Shared_DimOrganization WHERE SYS_CHANGE_VERSION > 0
--		EXCEPT
--		SELECT edw.sourcekey FROM Shared.DimOrganization as edw
--		) AS list ON 
--			stg.sourcekey = list.sourcekey
--	) as x

	--SELECT
	--	u.DimUserID,
	--	x.*
	--FROM
	--(
	--	SELECT
	--		ROW_NUMBER() OVER (PARTITION BY stg.SourceKey ORDER BY stg.SYS_CHANGE_VERSION DESC) AS rn,
	--		stg.*
	--	FROM Paga_Staging.Staging.Shared_DimUserRole AS stg
	--	INNER JOIN
	--	(
	--	SELECT DISTINCT SourceKey from Paga_Staging.staging.Shared_DimUserRole 
	--	EXCEPT
	--	SELECT edw.sourcekey FROM Shared.DimUserRole as edw
	--	) AS list ON 
	--		stg.sourcekey = list.sourcekey
	--) as x
	--LEFT OUTER JOIN shared.DimUser AS u ON
	--	x.DimUserSourceKey = u.SourceKey


	--SELECT
	--		x.*
	--FROM
	--(
	--	SELECT
	--		ROW_NUMBER() OVER (PARTITION BY stg.SourceKey ORDER BY stg.SYS_CHANGE_VERSION DESC) AS rn,
	--		stg.*
	--	FROM Paga_Staging.Staging.Shared_DimOrganizationUnitLevel1 AS stg
	--	INNER JOIN
	--	(
	--	SELECT DISTINCT SourceKey from Paga_Staging.staging.Shared_DimOrganizationUnitLevel1 
	--	EXCEPT
	--	SELECT edw.sourcekey FROM Shared.DimOrganizationUnitLevel1 as edw
	--	) AS list ON 
	--		stg.sourcekey = list.sourcekey
	--) as x
	
	--SELECT
	--		x.*
	--FROM
	--(
	--	SELECT
	--		ROW_NUMBER() OVER (PARTITION BY stg.SourceKey ORDER BY stg.SYS_CHANGE_VERSION DESC) AS rn,
	--		stg.*
	--	FROM Paga_Staging.Staging.Finance_DimBankAccount AS stg
	--	INNER JOIN
	--	(
	--	SELECT DISTINCT SourceKey from Paga_Staging.staging.Finance_DimBankAccount 
	--	EXCEPT
	--	SELECT edw.sourcekey FROM Finance.DimBankAccount as edw
	--	) AS list ON 
	--		stg.sourcekey = list.sourcekey
	--) as x

		--SELECT
		--		x.*
		--FROM
		--(
		--	SELECT
		--		ROW_NUMBER() OVER (PARTITION BY stg.SourceKey ORDER BY stg.SYS_CHANGE_VERSION DESC) AS rn,
		--		stg.*
		--	FROM Paga_Staging.Staging.Finance_DimFinancialAccount AS stg
		--	INNER JOIN
		--	(
		--	SELECT DISTINCT SourceKey from Paga_Staging.staging.Finance_DimFinancialAccount 
		--	EXCEPT
		--	SELECT edw.sourcekey FROM Finance.DimFinancialAccount as edw
		--	) AS list ON 
		--		stg.sourcekey = list.sourcekey
		--) as x
		--WHERE x.rn = 1

	--SELECT
	--		x.*
	--FROM
	--(
	--	SELECT
	--		ROW_NUMBER() OVER (PARTITION BY stg.SourceKey ORDER BY stg.SYS_CHANGE_VERSION DESC) AS rn,
	--		stg.*
	--	FROM Paga_Staging_Initial.staging.Finance_DimBankaccount2  AS stg
	--	INNER JOIN
	--	(
	--	SELECT DISTINCT SourceKey from Paga_Staging_Initial.staging.Finance_DimBankaccount2 
	--	EXCEPT
	--	SELECT edw.sourcekey FROM Finance.DimBankAccount as edw
	--	) AS list ON 
	--		stg.sourcekey = list.sourcekey
	--) as x
	--WHERE x.rn = 1


		--SELECT
		--		x.*
		--FROM
		--(
		--	SELECT
		--		ROW_NUMBER() OVER (PARTITION BY stg.SourceKey ORDER BY stg.SYS_CHANGE_VERSION DESC) AS rn,
		--		stg.*
		--	FROM Paga_Staging.Updates.Shared_FactProcessEvent AS stg
		--	INNER JOIN
		--	(
		--	SELECT DISTINCT SourceKey from Paga_Staging.staging.Shared_FactProcessEvent 
		--	EXCEPT
		--	SELECT edw.sourcekey FROM Shared.FactProcessEvent as edw
		--	) AS list ON 
		--		stg.sourcekey = list.sourcekey
		--) as x
		--WHERE x.rn = 1

		--SELECT
		--		x.*
		--FROM
		--(
		--	SELECT
		--		ROW_NUMBER() OVER (PARTITION BY stg.SourceKey ORDER BY stg.SYS_CHANGE_VERSION DESC) AS rn,
		--		stg.*
		--	FROM Paga_Staging.staging.Shared_FactIntegrationTransaction AS stg
		--	INNER JOIN
		--	(
		--	SELECT DISTINCT SourceKey from Paga_Staging.staging.Shared_FactIntegrationTransaction 
		--	EXCEPT
		--	SELECT edw.sourcekey FROM Shared.FactIntegrationTransaction as edw
		--	) AS list ON 
		--		stg.sourcekey = list.sourcekey
		--) as x
		--WHERE x.rn = 1

		--SELECT
		--		x.*
		--FROM
		--(
		--	SELECT
		--		ROW_NUMBER() OVER (PARTITION BY stg.SourceKey ORDER BY stg.SYS_CHANGE_VERSION DESC) AS rn,
		--		stg.*
		--	FROM Paga_Staging.Updates.Finance_FactFinancialTransaction AS stg
		--	INNER JOIN
		--	(
		--	SELECT DISTINCT SourceKey from Paga_Staging.staging.Finance_FactFinancialTransaction
		--	EXCEPT
		--	SELECT edw.sourcekey FROM Finance.FactFinancialTransaction as edw
		--	) AS list ON 
		--		stg.sourcekey = list.sourcekey
		--) as x
		--WHERE x.rn = 1

		SELECT
				x.*
		FROM
		(
			SELECT
				ROW_NUMBER() OVER (PARTITION BY stg.SourceKey ORDER BY stg.SYS_CHANGE_VERSION DESC) AS rn,
				stg.*
			FROM Paga_Staging.Updates.Finance_FactGLTransaction AS stg
			INNER JOIN
			(
			SELECT DISTINCT SourceKey from Paga_Staging.staging.Finance_FactGLTransaction
			EXCEPT
			SELECT edw.sourcekey FROM Finance.FactGLTransaction as edw
			) AS list ON 
				stg.sourcekey = list.sourcekey
		) as x
		WHERE x.rn = 1

