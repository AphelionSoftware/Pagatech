# Load the IntegrationServices Assembly            
$loadStatus = [Reflection.Assembly]::Load("Microsoft"+            
".SqlServer.Management.IntegrationServices" +            
", Version=11.0.0.0, Culture=neutral" +            
", PublicKeyToken=89845dcd8080cc91")            
            
# Store the IntegrationServices Assembly namespace to avoid typing it every time            
$ISNamespace = "Microsoft.SqlServer.Management.IntegrationServices"            
            
Write-Host "Connecting to server ..."            
            
# Create a connection to the server            
$constr = "Data Source=.\sql2012;Initial Catalog=master;Integrated Security=SSPI;"            
            
$con = New-Object System.Data.SqlClient.SqlConnection $constr            
            
# Create the Integration Services object            
$ssis = New-Object $ISNamespace".IntegrationServices" $con            
      
<#            
## Drop the existing catalog if it exists            
 Write-Host "Removing previous catalog ..."            
 if ($ssis.Catalogs.Count -gt 0)             
 {             
    $ssis.Catalogs["SSISDB"].Drop()             
 }            
 #>
 
# TODO check for catalog     
# Provision a new SSIS Catalog            
Write-Host "Creating new SSISDB Catalog ..."            
$cat = New-Object $ISNamespace".Catalog" ($ssis, "SSISDB", "#PASSWORD1")            
$cat.Create()            
            
# Create a new folder            
Write-Host "Creating Folder ..."            
$folder = New-Object $ISNamespace".CatalogFolder" ($cat, "Folder", "Description")            
$folder.Create()            
            
# Read the project file, and deploy it to the folder            
Write-Host "Deploying ExecutionDemo project ..."            
[byte[]] $projectFile = [System.IO.File]::ReadAllBytes("E:\GitHub\Pagatech\ETL\Aphelion.Paga.StagingLoad\Aphelion.Paga.StagingLoad.2010\bin\Development\Aphelion.Paga.StagingLoad.ispac")            
$folder.DeployProject("Aphelion.Paga.StagingLoad.2010", $projectFile)  