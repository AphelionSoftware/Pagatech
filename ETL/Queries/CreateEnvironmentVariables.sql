DECLARE @var sql_variant = N'Data Source=pagahalistener,1433\SQL2012;Initial Catalog=paga;Provider=SQLNCLI11.1;Integrated Security=SSPI;Auto Translate=False;'
EXEC [SSISDB].[catalog].[create_environment_variable] 
@variable_name=N'PagaPrimary', 
@sensitive=False, 
@description=N'', 
@environment_name=N'Aphelion.Paga.BI', 
@folder_name=N'Aphelion.Paga.BI', 
@value=@var,
@data_type=N'String'
GO

DECLARE @var sql_variant = N'Data Source=PAGA01SV010;Initial Catalog=paga_change_log;Provider=SQLNCLI11.1;Integrated Security=SSPI;Auto Translate=False;'
EXEC [SSISDB].[catalog].[create_environment_variable] 
@variable_name=N'ChangeLogDB', 
@sensitive=False, 
@description=N'', 
@environment_name=N'Aphelion.Paga.BI', 
@folder_name=N'Aphelion.Paga.BI', 
@value=@var,
@data_type=N'String'
GO

DECLARE @var sql_variant = N'Data Source=PAGA01SV010;Initial Catalog=paga;Provider=SQLNCLI11.1;Integrated Security=SSPI;Auto Translate=False;'
EXEC [SSISDB].[catalog].[create_environment_variable] 
@variable_name=N'PagaReadOnly', 
@sensitive=False, 
@description=N'', 
@environment_name=N'Aphelion.Paga.BI', 
@folder_name=N'Aphelion.Paga.BI', 
@value=@var,
@data_type=N'String'
GO




DECLARE @var sql_variant = N'Data Source=PAGA01SV015\SQL2012;Initial Catalog=Paga_EDW;Provider=SQLNCLI11.1;Integrated Security=SSPI;Auto Translate=False;'
EXEC [SSISDB].[catalog].[create_environment_variable] 
@variable_name=N'Paga_EDW', 
@sensitive=False, 
@description=N'', 
@environment_name=N'Aphelion.Paga.BI', 
@folder_name=N'Aphelion.Paga.BI', 
@value=@var,
@data_type=N'String'
GO


DECLARE @var sql_variant = N'Data Source=PAGA01SV015\SQL2012;Initial Catalog=Paga_Errors;Provider=SQLNCLI11.1;Integrated Security=SSPI;Auto Translate=False;'
EXEC [SSISDB].[catalog].[create_environment_variable] 
@variable_name=N'Paga_Errors', 
@sensitive=False, 
@description=N'', 
@environment_name=N'Aphelion.Paga.BI', 
@folder_name=N'Aphelion.Paga.BI', 
@value=@var,
@data_type=N'String'
GO

DECLARE @var sql_variant = N'Data Source=PAGA01SV015\SQL2012;Initial Catalog=Aphelion.DB.LoadQueue;Provider=SQLNCLI11.1;Integrated Security=SSPI;Auto Translate=False;'
EXEC [SSISDB].[catalog].[create_environment_variable] 
@variable_name=N'LoadQueue', 
@sensitive=False, 
@description=N'', 
@environment_name=N'Aphelion.Paga.BI', 
@folder_name=N'Aphelion.Paga.BI', 
@value=@var,
@data_type=N'String'
GO



DECLARE @var sql_variant = N'Data Source=PAGA01SV015\SQL2012;Initial Catalog=Paga_Staging;Provider=SQLNCLI11.1;Integrated Security=SSPI;Auto Translate=False;'
EXEC [SSISDB].[catalog].[create_environment_variable] 
@variable_name=N'Paga_Staging', 
@sensitive=False, 
@description=N'', 
@environment_name=N'Aphelion.Paga.BI', 
@folder_name=N'Aphelion.Paga.BI', 
@value=@var,
@data_type=N'String'
GO



DECLARE @var sql_variant = N'Initial'
EXEC [SSISDB].[catalog].[create_environment_variable] 
@variable_name=N'LoadType', 
@sensitive=False, 
@description=N'', 
@environment_name=N'Aphelion.Paga.BI', 
@folder_name=N'Aphelion.Paga.BI', 
@value=@var,
@data_type=N'String'
GO

DECLARE @var sql_variant = N''
EXEC [SSISDB].[catalog].[create_environment_variable] 
@variable_name=N'SchemaFilter', 
@sensitive=False, 
@description=N'', 
@environment_name=N'Aphelion.Paga.BI', 
@folder_name=N'Aphelion.Paga.BI', 
@value=@var,
@data_type=N'String'
GO