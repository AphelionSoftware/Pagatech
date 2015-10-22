add-pssnapin Microsoft.TeamFoundation.PowerShell -ErrorAction SilentlyContinue


cls
echo "Begin script execution . . ."

echo "initialize new file and create header"
$outFilePath = "C:\Users\Administrator\Downloads\documents-export-2015-04-01.txt"
$created = Get-Date
$header = "/* Created on " + $created +" */"
$header = $header + [char]13  + [char]10 
$header | Out-File -filepath $outFilePath

echo "process each item in deployment list"


$FileCount = Get-Content "C:\Users\Administrator\Documents\posh"
write-Host $FileCount.count

for ($i=0; $i -le $FileCount.count -1 ; $i++)
    {
        $deploylist = gc -Path $FileName | Select-Object -Index $i
  
        $split = $deploylist -split ','
        $ignore = $split[0].trim()
        $PathName = $split[1].trim()
        $SQLFile = $split[2].trim()
        
           
      
        IF ($ignore -eq "Y") 
            {write-host "skipping file "  ($i+1) " of " $FileCount.count " - "  $fullpath}
        ELSEIF ($ignore -eq "N")  
            {
                $FullPath = $pathName + $SQLFile      
                write-Host "adding file "  ($i+1) " of " $FileCount.count " - "  $fullpath
                

                $Comment = "/****** " + $SQLFile +" ******/" 
                $Comment = $comment + [char]13  + [char]10 
                $comment | Out-File -filepath $outFilePath -append
                gc -Path $FullPath | Out-File -filepath $outFilePath  -append
                $Comment = [char]13  + [char]10 
                $comment | Out-File -filepath $outFilePath -append
            }
           
    }

