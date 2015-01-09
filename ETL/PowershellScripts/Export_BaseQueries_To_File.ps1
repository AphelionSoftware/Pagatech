#E:\GitHub\Pagatech\ETL\SourceQueries

ADD-PSSNAPIN Microsoft.TeamFoundation.PowerShell
ADD-PSSNAPIN SqlServerCmdletSnapin100
ADD-PSSNAPIN SqlServerProviderSnapin100

cls

$GetBaseQueries = "SELECT 
	TABLE_NAME = t2.TABLE_SCHEMA + '.' + t2.TABLE_NAME, 
	ep.value 
FROM Paga_EDW.sys.extended_properties as ep
INNER JOIN Paga_EDW.sys.tables AS t1 ON
	ep.major_id = t1.object_id
INNER JOIN Paga_EDW.INFORMATION_SCHEMA.TABLES AS t2 ON
	t1.name = t2.TABLE_NAME
	AND t2.TABLE_TYPE = 'BASE TABLE'
WHERE 
	ep.name ='BaseQuery'
"

$ListAll = Invoke-SQLCmd -query $GetBaseQueries -Server WIN-TDGNUUDMOVR\SQL2012 

$ListAll | foreach {
	
    $QueryText = $_.value.ToString()  
    $SQLFile = "E:\GitHub\Pagatech\ETL\SourceQueries\" +$_.TABLE_NAME.ToString() +".sql"
    write-host $_.TABLE_NAME.ToString()

    [string]$file_text = $QueryText

    $file_text.Trim() | Out-File -filepath  $SQLFile -encoding ASCII
}
echo "Export Complete"