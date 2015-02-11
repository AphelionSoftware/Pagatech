#E:\GitHub\Pagatech\ETL\SourceQueries

ADD-PSSNAPIN Microsoft.TeamFoundation.PowerShell
import-module sqlps

cls


$ServerName = "PAGA01SV015\SQL2012"
$DatabaseName = "Paga_EDW"
$ExportPath = "F:\GitHub\Pagatech\ETL\SourceQueries\paga_EDW\"

$GetBaseQueries = "
    SELECT 
	    TABLE_NAME = t2.TABLE_SCHEMA + '.' + t2.TABLE_NAME, 
	    ep.value 
    FROM " +$DatabaseName +".sys.extended_properties as ep
    INNER JOIN " +$DatabaseName +".sys.tables AS t1 ON
	    ep.major_id = t1.object_id
    INNER JOIN " +$DatabaseName +".INFORMATION_SCHEMA.TABLES AS t2 ON
	    t1.name = t2.TABLE_NAME
	    AND t2.TABLE_TYPE = 'BASE TABLE'
    WHERE 
	    ep.name ='BaseQuery'
"
write-host $GetBaseQueries

$ListAll = Invoke-SQLCmd -query $GetBaseQueries -Server $ServerName

$ListAll | foreach {
	
    $QueryText = $_.value.ToString()  
    $SQLFile = $ExportPath +$_.TABLE_NAME.ToString() +".sql"
    write-host $_.TABLE_NAME.ToString()

    [string]$file_text = $QueryText

    $file_text.Trim() | Out-File -filepath  $SQLFile -encoding ASCII
}
echo "Export Complete"