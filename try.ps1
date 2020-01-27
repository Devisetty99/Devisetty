
 param (
    $param1 = "TRIAL.DELETE",
    $param2 = "TEST",
    #$param3,
    $days = '-0'
)
#$iisbackup =  $"IIS.BackupDirectory"
#$WebsiteName = "DRIS_$param2_$param3"
$Path = "C:\Users\vdevisetty\Desktop\$param1\$param2"
#$Path = "$param1\$WebsiteName"
$Daysback = "$days"
$CurrentDate = Get-Date
$DatetoDelete = $CurrentDate.AddDays($Daysback)
Get-ChildItem $Path -Recurse  | Where-Object { $_.LastWriteTime -lt $DatetoDelete } | Remove-Item -Force
exit 0
#Get-ChildItem $Path
#dir
#echo $param1