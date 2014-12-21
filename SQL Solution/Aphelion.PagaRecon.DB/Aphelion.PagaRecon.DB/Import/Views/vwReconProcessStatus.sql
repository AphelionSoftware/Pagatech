
CREATE VIEW [Import].[vwReconProcessStatus]
as

SELECT 
CASE WHEN RPS.CurrentSourceImportedFileID IS NOT NULL THEN 'File Chosen'
WHEN EXISTS (SELECT 1 FROM Recon.ImportedFile IFSource 
		WHERE FSSource.FileDefinitionID = IFSource.FileDefinitionID
		AND CAST(IFSource.sys_ModifiedOn as date) = cast(getdate() as date)
		) THEN 'Present' ELSE 'Missing' END As
		SourceFileAvailable

,CASE 
WHEN RPS.CurrentTargetImportedFileID IS NOT NULL THEN 'File Chosen'
WHEN EXISTS (SELECT 1 FROM Recon.ImportedFile IFTarget 
		WHERE FSTarget.FileDefinitionID = IFTarget.FileDefinitionID
		AND CAST(IFTarget.sys_ModifiedOn as date) = cast(getdate() as date)
		) THEN 'Present' ELSE 'Missing' END As
		TargetFileAvailable


, RP.Id	ReconProcessID
, RP.Code ReconProcessCode
, RP.Name ReconProcessName
, RPS.ID ReconProcessStepID
, rPS.Code ReconProcessStepCode
, RPS.Name ReconProcessStepName
FROM Admin.ReconProcess RP
	INNER JOIN Admin.ReconProcessStep RPS
		ON RP.ID = RPS.ReconProcessID
	INNER JOIN Import.FileSection FSSource
		ON RPS.SourceFileSectionID = FSSource.ID
	INNER JOIN Import.FileSection FSTarget
		ON RPS.TargetFileSectionID = FSTarget.ID
 
/*UNION ALL
SELECT * 
FROM Admin.ReconProcess RP
	INNER JOIN Admin.ReconProcessStep RPS
		ON RP.ID = RPS.ReconProcessID

	INNER JOIN Import.FileSection FSTarget
		ON RPS.TargetFileSectionID = FSTarget.ID
*/
/*INNER JOIN Recon.ImportedFile IFSource 
	on FSSource.FileDefinitionID = IFSource.FileDefinitionID
	AND IFSource.ReconSummaryID IS NULL

INNER JOIN Recon.ImportedFile IFTarget 
	on FSTarget.FileDefinitionID = IFTarget.FileDefinitionID
	AND IFTarget.ReconSummaryID IS NULL
*/