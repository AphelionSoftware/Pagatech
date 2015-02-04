$GitFolder = "F:\Github\Pagatech"
$TargetServer = "PAGA01SV015\SQL2012"


$MSBuildModule = $GitFolder +"\Powershell\Invoke-MsBuild.psm1"
Import-Module -Name $MSBuildModule

$LogPath =  $GitFolder +"\Deploy"
$SolutionFolder =  $GitFolder +"\SQL Solution\Aphelion.PagaWarehouse.DB\Aphelion.DB.EDW\Paga_EDW"

$TargetConn = "/p:TargetConnectionString=`"Data Source=" +$TargetServer +"`;Integrated Security=True`;Pooling=False`""

Foreach ($file in get-childitem $SolutionFolder -recurse | where {$_.extension -eq ".sqlproj"})

{
    
    $LoadQueueSolutionPath = $file.FullName
    
    $TargetDB = "/p:TargetDatabase=" +$file.name.Replace(".sqlproj","").ToString() +" "

    Write-Host $File.Name " build started."
    $BuildCommand =  "/target:Clean;Build"
    $BuildLog = Invoke-MsBuild -Path $LoadQueueSolutionPath -MsBuildParameters $BuildCommand -BuildLogDirectoryPath $LogPath -KeepBuildLogOnSuccessfulBuilds -GetLogPath
    $buildSucceeded = Invoke-MsBuild -Path $LoadQueueSolutionPath -MsBuildParameters $BuildCommand -BuildLogDirectoryPath $LogPath -KeepBuildLogOnSuccessfulBuilds 

    if ($buildSucceeded)
        { 
            Write-Host $File.Name " Build completed successfully." 
            Write-Host ""
        }
    else
        { 
            Write-Host $File.Name "Build failed. Check build log for details." $buildLog 
            Write-Host ""
        }
    
    
    Write-Host $File.Name " deployment started."
    $DeployCommand = "/target:Deploy /verbosity:diag /p:BlockOnPossibleDataLoss=False /p:BlockIncrementalDeploymentIfDataLoss=False /p:AlwaysCreateNewDatabase=True /p:UseSandboxSettings=false " +$TargetDB  +$TargetConn 
   
    $DeployLog =  Invoke-MsBuild -Path $LoadQueueSolutionPath -MsBuildParameters $DeployCommand -ShowBuildWindow  -BuildLogDirectoryPath $LogPath -KeepBuildLogOnSuccessfulBuilds  -GetLogPath
    $deploySucceeded = Invoke-MsBuild -Path $LoadQueueSolutionPath -MsBuildParameters $DeployCommand -ShowBuildWindow   -BuildLogDirectoryPath $LogPath -KeepBuildLogOnSuccessfulBuilds

    if ($deploySucceeded)
        { 
            Write-Host $File.Name " deployment completed successfully." 
            Write-Host ""
        }
    else
        { 
            Write-Host $File.Name " deployment failed.  Check build log for details." $DeployLog 
            Write-Host ""
        }

}
