USE [master]
GO
/****** Object:  UserDefinedFunction [dbo].[AddForeignKey]    Script Date: 8/27/2014 7:55:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER FUNCTION [dbo].[AddForeignKey]
(	
	-- Add the parameters for the function here
	@TABLE_SCHEMA VARCHAR(255),
	@TABLE_NAME VARCHAR(255),
	@COLUMN_NAME VARCHAR(255),
	@REF_SCHEMA VARCHAR(255),
	@REF_TABLE VARCHAR(255)
)
RETURNS TABLE 
AS
RETURN 
(
	SELECT
	 
		'ALTER TABLE [' + @TABLE_SCHEMA +'].[' + @TABLE_NAME +'] 
		ADD  CONSTRAINT [fk_' +@TABLE_NAME +'_' + @COLUMN_NAME +'] 
		FOREIGN KEY ([' + @COLUMN_NAME +'])
		REFERENCES [' +@REF_SCHEMA +'].[' + @REF_TABLE +'] ([' +@COLUMN_NAME +'])
		GO'
	AS CodeSnippet
)
