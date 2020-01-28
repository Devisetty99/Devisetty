Get-ExecutionPolicy -List


 param (
    $param1,
    $param2, 
    #$param3,
    #$param4,
    $days = '-0'
)
#$iisbackup =  $"IIS.BackupDirectory"
$WebsiteName = "DRIS$param3$param4"
$Path = "C:\Users\vdevisetty\Desktop\$param1\$param2"
#$Path = "$param1\$WebsiteName"
$Daysback = "$days"
$CurrentDate = Get-Date
$DatetoDelete = $CurrentDate.AddDays($Daysback)
Get-ChildItem $Path -Recurse  | Where-Object { $_.LastWriteTime -lt $DatetoDelete } | Remove-Item -Force -Verbose

exit 0


#Get-ChildItem $Path
#dir
echo $param1

