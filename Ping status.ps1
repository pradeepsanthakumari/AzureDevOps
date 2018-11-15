Clear

$Servers=Get-Content C:\Temp\Pradeep\Servers.txt

foreach ($Server in $Servers)

{
$Status=Test-Connection -ComputerName $Server -Quiet 

IF ($Status -eq "True")

{
Write-Host "$Server is UP"
}

else
{
Write-host "$Server is Down"
}

}

Pradeep