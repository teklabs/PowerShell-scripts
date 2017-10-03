# AddAdPrereqs.ps1

# set static IP address
$ipalias = (Get-NetAdapter).Name
$ipaddress = “192.168.0.2”
$ipprefix = “24”
$ipgw = “192.168.0.1”
$ipdns = “192.168.0.2, 8.8.8.8”
$ipif = (Get-NetAdapter).ifIndex
New-NetIPAddress –InterfaceAlias $ipalias -IPAddress $ipaddress –PrefixLength $ipprefix -DefaultGateway $ipgw
Set-DnsClientServerAddress -InterfaceAlias $ipalias -ServerAddresses $ipdns


# rename the computer 
$newname = “CtxLab-DC01” 
Rename-Computer -NewName $newname -force 

# install features 
$featureLogPath = “c:\poshlog\featurelog.txt” 
New-Item $featureLogPath -ItemType file -Force 
$addsTools = “RSAT-AD-Tools” 
Add-WindowsFeature $addsTools 
Get-WindowsFeature | Where installed >>$featureLogPath 

# restart the computer 
Restart-Computer


Get-NetIpAddress

$ipalias = (Get-NetAdapter).Name
New-NetIPAddress –InterfaceAlias $ipalias –IPAddress “192.168.0.1” –PrefixLength 24 -DefaultGateway 192.168.0.254

Set-DnsClientServerAddress -InterfaceAlias “Wired Ethernet Connection” -ServerAddresses 192.168.0.1, 192.168.0.2
