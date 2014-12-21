MKDIR Deploy\Aphelion.PagaWarehouse.DB

"C:\Program Files (x86)\MSBuild\12.0\Bin\msbuild.exe" /target:Deploy /p:BlockOnPossibleDataLoss=False /p:BlockIncrementalDeploymentIfDataLoss=False /p:UseSandboxSettings=false /p:TargetDatabase=Paga_EDW;TargetConnectionString="Data Source=.\SQL2012;Integrated Security=True;Pooling=False" "SQL Solution\PagaDBs\Paga_EDW\Paga_EDW\Paga_EDW.sqlproj" > Deploy\Deploy_Paga_EDW_DB.txt
XCOPY "SQL Solution\Aphelion.PagaWarehouse.DB\Aphelion.DB.EDW\Paga_EDW\bin\Debug\Paga_EDW.publish.sql" "Deploy\PagaDBs\" /Y


"C:\Program Files (x86)\MSBuild\12.0\Bin\msbuild.exe" /target:Deploy /p:BlockOnPossibleDataLoss=False /p:BlockIncrementalDeploymentIfDataLoss=False  /p:UseSandboxSettings=false /p:TargetDatabase=Paga_Errors;TargetConnectionString="Data Source=.\SQL2012;Integrated Security=True;Pooling=False" "SQL Solution\PagaDBs\Paga_EDW\Database1\Paga_Errors.sqlproj" > Deploy\Deploy_Paga_Errors_DB.txt
XCOPY "SQL Solution\Aphelion.PagaWarehouse.DB\Aphelion.DB.EDW\Paga_Errors\bin\Debug\Paga_Errors.publish.sql" "Deploy\PagaDBs\" /Y


"C:\Program Files (x86)\MSBuild\12.0\Bin\msbuild.exe" /target:Deploy /p:BlockOnPossibleDataLoss=False /p:BlockIncrementalDeploymentIfDataLoss=False  /p:UseSandboxSettings=false /p:TargetDatabase=Paga_Staging;TargetConnectionString="Data Source=.\SQL2012;Integrated Security=True;Pooling=False" "SQL Solution\PagaDBs\Paga_EDW\Paga_Staging\Paga_Staging.sqlproj" > Deploy\Deploy_Paga_Staging_DB.txt
XCOPY "SQL Solution\Aphelion.PagaWarehouse.DB\Aphelion.DB.EDW\Paga_Staging\bin\Debug\Paga_Staging.publish.sql" "Deploy\PagaDBs\" /Y

