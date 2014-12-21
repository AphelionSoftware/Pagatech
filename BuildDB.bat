MKDIR Deploy
"C:\Program Files (x86)\MSBuild\12.0\Bin\msbuild.exe" /target:rebuild /p:BlockIncrementalDeploymentIfDataLoss=False;UseSandboxSettings=false /p:TargetDatabase=Paga_EDW;TargetConnectionString="Data Source=.\SQL2012;Integrated Security=True;Pooling=False" "SQL Solution\PagaDBs\Paga_EDW\Paga_EDW\Paga_EDW.sqlproj" > Deploy\Paga_EDW_DB.txt

"C:\Program Files (x86)\MSBuild\12.0\Bin\msbuild.exe" /target:rebuild /p:BlockIncrementalDeploymentIfDataLoss=False;UseSandboxSettings=false /p:TargetDatabase=Paga_Errors;TargetConnectionString="Data Source=.\SQL2012;Integrated Security=True;Pooling=False" "SQL Solution\PagaDBs\Paga_EDW\Database1\Paga_Errors.sqlproj" > Deploy\Paga_Errors_DB.txt

"C:\Program Files (x86)\MSBuild\12.0\Bin\msbuild.exe" /target:rebuild /p:BlockIncrementalDeploymentIfDataLoss=False;UseSandboxSettings=false /p:TargetDatabase=Paga_Staging;TargetConnectionString="Data Source=.\SQL2012;Integrated Security=True;Pooling=False" "SQL Solution\PagaDBs\Paga_EDW\Paga_Staging\Paga_Staging.sqlproj" > Deploy\Paga_Staging_DB.txt

