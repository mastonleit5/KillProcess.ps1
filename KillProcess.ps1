$cpuusage = Read-Host("Stop all above how much CPU?")
Get-Process | Where-Object -FilterScript {$_.Responding -eq $false}
Get-Process | Where-Object -FilterScript {$_.Responding -eq $false}
$kill = Get-Process | Where-Object {$_.CPU -gt $cpuusage}
$kill = Get-Process | Where-Object {$_.CPU -gt 50}
$killum = Get-Process | Where-Object -FilterScript {$_.Responding -eq $false} | Stop-Process 
$kill = Read-Host("What process would you like to kill?")
Stop-Process -Confirm $kill
Stop-Process -Confirm $killum 