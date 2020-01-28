#$PackageName = "_webroot_backups"
#$PackagePath = "E:\${PackageName}"
#$Files = Get-ChildItem -Name "$FilePath"
#echo "$Files"
#cd DRIS_$(Customer.Mnemonic)_$(Environment.Suffix)

#(Get-Item -Path ".\").FullName
#x = '10';
#$x


#param(
  #      [Parameter(Position=3)]
 #       [string]$name
#)
#write-Host "Name:      " $($name)

Function Test($data)
{
    $data = 3
}

$var = 10
Test -data $var
$var
$Daysback = $var
$CurrentDate = Get-Date
$DatetoDelete = $CurrentDate.AddDays($Daysback)