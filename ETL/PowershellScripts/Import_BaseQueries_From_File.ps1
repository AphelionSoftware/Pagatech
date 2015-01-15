# Update Base Query from File

$Path = "E:\GitHub\Pagatech\ETL\SourceQueries\paga_EDW"
Get-ChildItem $Path | Where-Object {$_.name -like "*.sql"}| ForEach {
	$string = $_.Name
	$QueryFile = $string.split(".")
	
	$SchemaName= $QueryFile[0].TOSTRING() 
    $TableName = $QueryFile[1].ToString()

    [string]$BaseQuery = Get-Content $_.fullName
    $BaseQuery = $BaseQuery.ToString().Replace("'", "''")
    
    $UpdateQuery = "
        EXEC Paga_EDW.sys.sp_updateextendedproperty 
        @name=N'BaseQuery', @value=N'" +$BaseQuery +"', 
        @level0type=N'SCHEMA',@level0name=N'" +$SchemaName +"', 
        @level1type=N'TABLE',@level1name=N'" +$TableName +"';
		"
    Invoke-SQLCmd -query $UpdateQuery -Server WIN-TDGNUUDMOVR\SQL2012 
}
