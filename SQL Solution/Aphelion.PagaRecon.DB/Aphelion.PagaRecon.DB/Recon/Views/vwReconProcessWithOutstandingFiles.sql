CREATE VIEW Recon.vwReconProcessWithOutstandingFiles
AS
select * from admin.ReconProcess
where exists(select 1 from admin.ReconProcessStep RPS

inner join import.FileSection SrcFS
	on RPS.SourceFileSectionID = Srcfs.ID
	inner join recon.ImportedFile SrcIF
		ON srcfs.FileDefinitionID = Srcif.FileDefinitionID
		and srcif.ReconSummaryID is null

inner join import.FileSection TrgtFS
	on rps.TargetFileSectionID = TrgtFS.ID
	inner join Recon.ImportedFile TrgtIF
		on TrgtFS.FileDefinitionID = Trgtfs.FileDefinitionID
		and TrgtIF.ReconSummaryID is null
)