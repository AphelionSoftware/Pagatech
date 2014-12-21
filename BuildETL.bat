"C:\Program Files (x86)\Microsoft Visual Studio 10.0\Common7\IDE\devenv" ETL\Aphelion.Paga.StagingLoad.2010\Aphelion.Paga.StagingLoad.2010.sln /rebuild 
MKDIR Deploy\ETL
COPY "ETL\Aphelion.Paga.StagingLoad.2010\Aphelion.Paga.StagingLoad.2010\bin\Development\Aphelion.Paga.StagingLoad.ispac" "Deploy\ETL\Aphelion.Paga.StagingLoad.ispac" /Y 

