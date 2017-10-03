<#	
	.NOTES
	===========================================================================
	 Created on:   	4/5/2016 1:48 PM
	 Created by:   	Sinisa Sokolic
	 Organization: 	RIS Consulting GmbH
	 Filename:     	RDS_Updates_Revealed.ps1
	===========================================================================
	.DESCRIPTION
		This file checks the installed RDS roles on a server and additionaly looks for the corresponding updates.

	.GUIDELINES
		Just run it on one of your RDS servers. Please test this script in your lab or development environment before using it in production.
#>

Write-Host "######################################################################" -ForegroundColor Green
Write-Host -ForegroundColor Green "You are running the following Operating System:"
(Get-WmiObject -class Win32_OperatingSystem).Caption
[environment]::OSVersion.VersionString
Write-Host "######################################################################" -ForegroundColor Green
Write-Host "Checking Rollups"
Write-Host "######################################################################" -ForegroundColor Green

$KB2903939 = Get-HotFix | Where-Object {$_.HotFixId -eq "KB2903939"}
    If(!$KB2903939)
        {
            Write-Host "KB2903939 is not installed" -ForegroundColor Red
            Write-Host "Get it here: https://support.microsoft.com/de-de/kb/2903939" -ForegroundColor DarkYellow
        }
        else
        {
            Write-Host "KB2903939 is installed"  -ForegroundColor Green
        }

$KB2928680 = Get-HotFix | Where-Object {$_.HotFixId -eq "KB2928680"}
    If(!$KB2928680)
        {
            Write-Host "KB2928680 is not installed" -ForegroundColor Red
            Write-Host "Get it here: https://support.microsoft.com/de-de/kb/2928680" -ForegroundColor DarkYellow
        }
        else
        {
            Write-Host "KB2928680 is installed"  -ForegroundColor Green
        }

$KB2919355 = Get-HotFix | Where-Object {$_.HotFixId -eq "KB2919355"}
    If(!$KB2919355)
        {
            Write-Host "KB2919355 is not installed" -ForegroundColor Red
            Write-Host "Get it here: https://support.microsoft.com/de-de/kb/2919355" -ForegroundColor DarkYellow
        }
        else
        {
            Write-Host "KB2919355 is installed"  -ForegroundColor Green
        }

$KB2955164 = Get-HotFix | Where-Object {$_.HotFixId -eq "KB2955164"}
    If(!$KB2955164)
        {
            Write-Host "KB2955164 is not installed" -ForegroundColor Red
            Write-Host "Get it here: https://support.microsoft.com/de-de/kb/2955164" -ForegroundColor DarkYellow
        }
        else
        {
            Write-Host "KB2955164 is installed"  -ForegroundColor Green
        }

$KB2975719 = Get-HotFix | Where-Object {$_.HotFixId -eq "KB2975719"}
    If(!$KB2975719)
        {
            Write-Host "KB2975719 is not installed" -ForegroundColor Red
            Write-Host "Get it here: https://support.microsoft.com/de-de/kb/2975719" -ForegroundColor DarkYellow
        }
        else
        {
            Write-Host "KB2975719 is installed"  -ForegroundColor Green
        }

$KB3000850 = Get-HotFix | Where-Object {$_.HotFixId -eq "KB3000850"}
    If(!$KB3000850)
        {
            Write-Host "KB3000850 is not installed" -ForegroundColor Red
            Write-Host "Get it here: https://support.microsoft.com/de-de/kb/3000850" -ForegroundColor DarkYellow
        }
        else
        {
            Write-Host "KB3000850 is installed"  -ForegroundColor Green
        }

$KB3013769 = Get-HotFix | Where-Object {$_.HotFixId -eq "KB3013769"}
    If(!$KB3013769)
        {
            Write-Host "KB3013769 is not installed" -ForegroundColor Red
            Write-Host "Get it here: https://support.microsoft.com/de-de/kb/3013769" -ForegroundColor DarkYellow
        }
        else
        {
            Write-Host "KB3013769 is installed"  -ForegroundColor Green
        }

$KB2984006 = Get-HotFix | Where-Object {$_.HotFixId -eq "KB2984006"}
    If(!$KB2984006)
        {
            Write-Host "KB2984006 is not installed" -ForegroundColor Red
            Write-Host "Get it here: https://support.microsoft.com/de-de/kb/2984006" -ForegroundColor DarkYellow
        }
        else
        {
            Write-Host "KB2984006 is installed"  -ForegroundColor Green
        }

Write-Host ""
Write-Host "######################################################################" -ForegroundColor Green
Write-Host "Checking General OS Updates"
Write-Host "######################################################################" -ForegroundColor Green

$KB3092688 = Get-HotFix | Where-Object {$_.HotFixId -eq "KB3092688"}
    If(!$KB3092688)
        {
            Write-Host "KB3092688 is not installed" -ForegroundColor Red
            Write-Host "Get it here: https://support.microsoft.com/de-de/kb/3092688" -ForegroundColor DarkYellow
        }
        else
        {
            Write-Host "KB3092688 is installed"  -ForegroundColor Green
        }

$KB3078689 = Get-HotFix | Where-Object {$_.HotFixId -eq "KB3078689"}
    If(!$KB3078689)
        {
            Write-Host "KB3078689 is not installed" -ForegroundColor Red
            Write-Host "Get it here: https://support.microsoft.com/de-de/kb/3078689" -ForegroundColor DarkYellow
        }
        else
        {
            Write-Host "KB3078689 is installed"  -ForegroundColor Green
        }

$KB3053667 = Get-HotFix | Where-Object {$_.HotFixId -eq "KB3053667"}
    If(!$KB3053667)
        {
            Write-Host "KB3053667 is not installed" -ForegroundColor Red
            Write-Host "Get it here: https://support.microsoft.com/de-de/kb/3053667" -ForegroundColor DarkYellow
        }
        else
        {
            Write-Host "KB3053667 is installed"  -ForegroundColor Green
        }

$KB2981330 = Get-HotFix | Where-Object {$_.HotFixId -eq "KB2981330"}
    If(!$KB2981330)
        {
            Write-Host "KB2981330 is not installed" -ForegroundColor Red
            Write-Host "Get it here: https://support.microsoft.com/de-de/kb/2981330" -ForegroundColor DarkYellow
        }
        else
        {
            Write-Host "KB2981330 is installed"  -ForegroundColor Green
        }

Write-Host ""
Write-Host "######################################################################" -ForegroundColor Green
Write-Host "Checking RemoteApp"
Write-Host "######################################################################" -ForegroundColor Green

$KB3103000 = Get-HotFix | Where-Object {$_.HotFixId -eq "KB3103000"}
    If(!$KB3103000)
        {
            Write-Host "KB3103000 is not installed" -ForegroundColor Red
            Write-Host "Get it here: https://support.microsoft.com/de-de/kb/3103000" -ForegroundColor DarkYellow
        }
        else
        {
            Write-Host "KB3103000 is installed"  -ForegroundColor Green
        }

Write-Host ""
Write-Host "######################################################################" -ForegroundColor Green
Write-Host "Checking Remote Desktop Client"
Write-Host "######################################################################" -ForegroundColor Green

$KB3024260 = Get-HotFix | Where-Object {$_.HotFixId -eq "KB3024260"}
    If(!$KB3024260)
        {
            Write-Host "KB3024260 is not installed" -ForegroundColor Red
            Write-Host "Get it here: https://support.microsoft.com/de-de/kb/3024260" -ForegroundColor DarkYellow
        }
        else
        {
            Write-Host "KB3024260 is installed"  -ForegroundColor Green
        }

Write-Host ""
Write-Host "######################################################################" -ForegroundColor Green
Write-Host "Checking Device Redirection & Printing"
Write-Host "######################################################################" -ForegroundColor Green

$KB3073630 = Get-HotFix | Where-Object {$_.HotFixId -eq "KB3073630"}
    If(!$KB3073630)
        {
            Write-Host "KB3073630 is not installed" -ForegroundColor Red
            Write-Host "Get it here: https://support.microsoft.com/de-de/kb/3073630" -ForegroundColor DarkYellow
        }
        else
        {
            Write-Host "KB3073630 is installed"  -ForegroundColor Green
        }

$KB3055615 = Get-HotFix | Where-Object {$_.HotFixId -eq "KB3055615"}
    If(!$KB3055615)
        {
            Write-Host "KB3055615 is not installed" -ForegroundColor Red
            Write-Host "Get it here: https://support.microsoft.com/de-de/kb/3055615" -ForegroundColor DarkYellow
        }
        else
        {
            Write-Host "KB3055615 is installed"  -ForegroundColor Green
        }

Write-Host ""
Write-Host "######################################################################" -ForegroundColor Green
Write-Host "Checking Remote Assistance"
Write-Host "######################################################################" -ForegroundColor Green
$RemoteAssistance = (Get-WindowsFeature Remote-Assistance).Installed
If(!$RemoteAssistance)
        {
            Write-Host "Remote-Assistance is not installed" -ForegroundColor Red
        }
        else
        {
            Write-Host "Remote-Assistance is installed"  -ForegroundColor Yellow
            
            $KB2919355 = Get-HotFix | Where-Object {$_.HotFixId -eq "KB2919355"}
                If(!$KB2919355)
                {
                    Write-Host "KB2919355 is not installed" -ForegroundColor Red
                    Write-Host "Get it here: https://support.microsoft.com/de-de/kb/2919355" -ForegroundColor DarkYellow
                }
                else
                {
                    Write-Host "KB2919355 is installed"  -ForegroundColor Green
                }
        }

Write-Host ""
Write-Host "######################################################################" -ForegroundColor Green
Write-Host "Licensing"
Write-Host "######################################################################" -ForegroundColor Green
$RDSLicensing = (Get-WindowsFeature RDS-Licensing).Installed
If(!$RDSLicensing)
        {
            Write-Host "RDS-Licensing is not installed" -ForegroundColor Red
        }
        else
        {
            Write-Host "RDS-Licensing is installed"  -ForegroundColor Yellow

            $KB3013108 = Get-HotFix | Where-Object {$_.HotFixId -eq "KB3013108"}
                If(!$KB3013108)
                    {
                        Write-Host "KB3013108 is not installed" -ForegroundColor Red
                        Write-Host "Get it here: https://support.microsoft.com/de-de/kb/3013108" -ForegroundColor DarkYellow
                    }
                    else
                    {
                        Write-Host "KB3013108 is installed"  -ForegroundColor Green
                    }

            $KB3108326 = Get-HotFix | Where-Object {$_.HotFixId -eq "KB3108326"}
                If(!$KB3108326)
                    {
                        Write-Host "KB3108326 is not installed" -ForegroundColor Red
                        Write-Host "Get it here: https://support.microsoft.com/de-de/kb/3108326" -ForegroundColor DarkYellow
                    }
                    else
                    {
                        Write-Host "KB3108326 is installed"  -ForegroundColor Green
                    }
           }
        
Write-Host ""
Write-Host "######################################################################" -ForegroundColor Green
Write-Host "Remote Desktop Connection Broker"
Write-Host "######################################################################" -ForegroundColor Green
$RDSConnectionBroker = (Get-WindowsFeature RDS-Connection-Broker).Installed
If(!$RDSConnectionBroker)
        {
            Write-Host "RDS-Connection-Broker is not installed" -ForegroundColor Red
        }
        else
        {
            Write-Host "RDS-Connection-Broker is installed"  -ForegroundColor Yellow
            Write-Host "No updates to be installed" -ForegroundColor Green
        }

Write-Host ""
Write-Host "######################################################################" -ForegroundColor Green
Write-Host "Remote Desktop Gateway"
Write-Host "######################################################################" -ForegroundColor Green
$RDSGateway = (Get-WindowsFeature RDS-Gateway).Installed
If(!$RDSGateway)
        {
            Write-Host "RDS-Gateway is not installed" -ForegroundColor Red
        }
        else
        {
            Write-Host "RDS-Gateway is installed"  -ForegroundColor Yellow
            
            $KB3123913 = Get-HotFix | Where-Object {$_.HotFixId -eq "KB3123913"}
                If(!$KB3123913)
                    {
                        Write-Host "KB3123913 is not installed" -ForegroundColor Red
                        Write-Host "Get it here: https://support.microsoft.com/de-de/kb/3123913" -ForegroundColor DarkYellow
                    }
                    else
                    {
                        Write-Host "KB3123913 is installed"  -ForegroundColor Green
                    }
        }

Write-Host ""
Write-Host "######################################################################" -ForegroundColor Green
Write-Host "Remote Desktop Virtualization Host"
Write-Host "######################################################################" -ForegroundColor Green
$RDSVirtualization = (Get-WindowsFeature RDS-Virtualization).Installed
If(!$RDSVirtualization)
        {
            Write-Host "RDS-Virtualization is not installed" -ForegroundColor Red
        }
        else
        {
            Write-Host "RDS-Virtualization is installed"  -ForegroundColor Yellow
            
            $KB2908810 = Get-HotFix | Where-Object {$_.HotFixId -eq "KB2908810"}
                If(!$KB2908810)
                    {
                        Write-Host "KB2908810 is not installed" -ForegroundColor Red
                        Write-Host "Get it here: https://support.microsoft.com/de-de/kb/2908810" -ForegroundColor DarkYellow
                    }
                    else
                    {
                        Write-Host "KB2908810 is installed"  -ForegroundColor Green
                    }

            $KB2908809 = Get-HotFix | Where-Object {$_.HotFixId -eq "KB2908809"}
                If(!$KB2908809)
                    {
                        Write-Host "KB2908809 is not installed" -ForegroundColor Red
                        Write-Host "Get it here: https://support.microsoft.com/de-de/kb/2908809" -ForegroundColor DarkYellow
                    }
                    else
                    {
                        Write-Host "KB2908809 is installed"  -ForegroundColor Green
                    }

            $KB3092688 = Get-HotFix | Where-Object {$_.HotFixId -eq "KB3092688"}
                If(!$KB3092688)
                    {
                        Write-Host "KB3092688 is not installed" -ForegroundColor Red
                        Write-Host "Get it here: https://support.microsoft.com/de-de/kb/3092688" -ForegroundColor DarkYellow
                    }
                    else
                    {
                        Write-Host "KB3092688 is installed"  -ForegroundColor Green
                    }
        }

Write-Host ""
Write-Host "######################################################################" -ForegroundColor Green
Write-Host "Remote Desktop Session Host"
Write-Host "######################################################################" -ForegroundColor Green

$RDSRDServer = (Get-WindowsFeature RDS-RD-Server).Installed
If(!$RDSRDServer)
        {
            Write-Host "RDS-RD-Server is not installed" -ForegroundColor Red
        }
        else
        {
            Write-Host "RDS-RD-Server is installed"  -ForegroundColor Yellow
            
            $KB3146978 = Get-HotFix | Where-Object {$_.HotFixId -eq "KB3146978"}
                If(!$KB3146978)
                    {
                        Write-Host "KB3146978 is not installed" -ForegroundColor Red
                        Write-Host "Get it here: https://support.microsoft.com/de-de/kb/3146978" -ForegroundColor DarkYellow
                    }
                    else
                    {
                        Write-Host "KB3146978 is installed"  -ForegroundColor Green
                    }

            $KB3103000 = Get-HotFix | Where-Object {$_.HotFixId -eq "KB3103000"}
                If(!$KB3103000)
                    {
                        Write-Host "KB3103000 is not installed" -ForegroundColor Red
                        Write-Host "Get it here: https://support.microsoft.com/de-de/kb/3103000" -ForegroundColor DarkYellow
                    }
                    else
                    {
                        Write-Host "KB3103000 is installed"  -ForegroundColor Green
                    }

            $KB3092688 = Get-HotFix | Where-Object {$_.HotFixId -eq "KB3092688"}
                If(!$KB3092688)
                    {
                        Write-Host "KB3092688 is not installed" -ForegroundColor Red
                        Write-Host "Get it here: https://support.microsoft.com/de-de/kb/3092688" -ForegroundColor DarkYellow
                    }
                    else
                    {
                        Write-Host "KB3092688 is installed"  -ForegroundColor Green
                    }

            $KB3078676 = Get-HotFix | Where-Object {$_.HotFixId -eq "KB3078676"}
                If(!$KB3078676)
                    {
                        Write-Host "KB3078676 is not installed" -ForegroundColor Red
                        Write-Host "Get it here: https://support.microsoft.com/de-de/kb/3078676" -ForegroundColor DarkYellow
                    }
                    else
                    {
                        Write-Host "KB3078676 is installed"  -ForegroundColor Green
                    }

            $KB3073630 = Get-HotFix | Where-Object {$_.HotFixId -eq "KB3073630"}
                If(!$KB3073630)
                    {
                        Write-Host "KB3073630 is not installed" -ForegroundColor Red
                        Write-Host "Get it here: https://support.microsoft.com/de-de/kb/3073630" -ForegroundColor DarkYellow
                    }
                    else
                    {
                        Write-Host "KB3073630 is installed"  -ForegroundColor Green
                    }
        }

Write-Host ""
Write-Host "######################################################################" -ForegroundColor Green
Write-Host "Remote Desktop Web Access"
Write-Host "######################################################################" -ForegroundColor Green
$RDSWebAccess = (Get-WindowsFeature RDS-Web-Access).Installed
If(!$RDSWebAccess)
        {
            Write-Host "RDS-Web-Access is not installed" -ForegroundColor Red
        }
        else
        {
            Write-Host "RDS-Web-Access is installed"  -ForegroundColor Yellow
            
            $KB3069129 = Get-HotFix | Where-Object {$_.HotFixId -eq "KB3069129"}
                If(!$KB3069129)
                    {
                        Write-Host "KB3069129 is not installed" -ForegroundColor Red
                        Write-Host "Get it here: https://support.microsoft.com/de-de/kb/3069129" -ForegroundColor DarkYellow
                    }
                    else
                    {
                        Write-Host "KB3069129 is installed"  -ForegroundColor Green
                    }
}