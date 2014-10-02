CREATE PROC Recon.insertReconSource
	   @ReconSummaryID as int
	  ,@ReconItemStatusID as int 
      ,@Value as decimal(18,2)
      ,@SourceKey as varchar(4000)
      ,@MatchedReconDetailID  as int = null
      ,@FileDetailID  as int = null
	  AS
BEGIN

INSERT INTO [Recon].[ReconDetail]
([ReconSummaryID]
      ,[ReconItemStatusID]
      ,[Value]
      ,[SourceKey]
      ,[MatchedReconDetailID]
      ,[FileDetailID]
      )
	  VALUES 

	(
	@ReconSummaryID 
	  ,@ReconItemStatusID 
      ,@Value 
      ,@SourceKey 
      ,@MatchedReconDetailID  
      ,@FileDetailID  
	  
	)

	SELECT SCOPE_IDENTITY() as ID
END