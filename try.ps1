

 param (
    $param1,
    $param2, 
    #$param3,
    #$param4,
    $days = '-1'
)
#$iisbackup =  $"IIS.BackupDirectory"
#$WebsiteName = "DRIS$param3$param4"
$Path = "C:\Users\vdevisetty\Desktop\$param1\$param2"
#$Path = "$param1\$WebsiteName"
$Daysback = "$days"
$CurrentDate = Get-Date
$DatetoDelete = $CurrentDate.AddDays($Daysback)
Get-ChildItem $Path -Recurse  | Where-Object { $_.LastWriteTime -lt $DatetoDelete } | Remove-Item #-Force -Verbose
#Remove-Item -path "$Path\*" -Recurse  -Force -EA SilentlyContinue -Verbose
#Remove-Item -path "$Path\*"  -Recurse | Where-Object { $_.LastWriteTime -lt $DatetoDelete } -Force -EA SilentlyContinue -Verbose
#-path "$Path\*"| Where-Object { $_.LastWriteTime -lt $DatetoDelete } |
#Get-ExecutionPolicy -List 
#Get-ChildItem $pathV
exit 0


#Get-ChildItem $Path
#dir
echo $param1

