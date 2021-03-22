# powershell -NoProfile -ExecutionPolicy Unrestricted C:\Path2Powershell\MonitorBrightness.ps1 100


Param($Arg1)

(Get-WmiObject -Namespace root/WMI -Class WmiMonitorBrightnessMethods).WmiSetBrightness(1,$Arg1)
