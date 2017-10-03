$filecheck = “C:\Program Files (x86)\Citrix\ICA Client\SelfServicePlugin\SelfService.exe”
$filepresent = Test-Path $filecheck
If ($filepresent –eq $True) {Write-Host “Citrix Receiver is installed on the C:\ drive”}
else {Write-Host “Citrix Receiver is not installed on the C:\ drive”}