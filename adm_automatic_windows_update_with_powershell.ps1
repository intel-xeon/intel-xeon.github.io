Install-Module PSWindowsUpdate -Force -Confirm:$false
Set-ExecutionPolicy RemoteSigned -Force
Get-WindowsUpdate
Install-WindowsUpdate -AcceptAll -AutoReboot
