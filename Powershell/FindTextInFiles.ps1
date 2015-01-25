Get-ChildItem -Path C:\SSIS_Logging -Include *.txt, *.log -Recurse | Select-String -Pattern DimRole

