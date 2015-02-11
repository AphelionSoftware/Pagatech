# Load SqlServerProviderSnapin100
if (!(Get-PSSnapin | ?{$_.name -eq 'SqlServerProviderSnapin110'}))
{
if(Get-PSSnapin -registered | ?{$_.name -eq 'SqlServerProviderSnapin110'})
{
   add-pssnapin SqlServerProviderSnapin100
   write-host "Loading SqlServerProviderSnapin100 in session"
}
else
{
   write-host "SqlServerProviderSnapin100 is not registered with the system." -Backgroundcolor Red –Foregroundcolor White
   break
}
}
else
{
  write-host "SqlServerProviderSnapin100 is already loaded"
} 
 

# Load SqlServerCmdletSnapin100
if (!(Get-PSSnapin | ?{$_.name -eq 'SqlServerCmdletSnapin100'}))
{
if(Get-PSSnapin -registered | ?{$_.name -eq 'SqlServerCmdletSnapin100'})
{
   add-pssnapin SqlServerCmdletSnapin100
   write-host "Loading SqlServerCmdletSnapin100 in session"
}
else
{
   write-host "SqlServerCmdletSnapin100 is not registered with the system."
   break
}
}
else
{
  write-host "SqlServerCmdletSnapin100 is already loaded"
} 