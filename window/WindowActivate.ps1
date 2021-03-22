add-type -AssemblyName microsoft.VisualBasic
add-type -AssemblyName System.Windows.Forms
start-sleep -Milliseconds 500

$ps = Get-Process | Where-Object {$_.Name -match "APPLICATION_NAME"}
foreach($process in $ps){
    [Microsoft.VisualBasic.Interaction]::AppActivate($process.ID);
}