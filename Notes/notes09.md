Lesson 9: a practical interlude

YAML = "YAML ain't markup language" AKA literally that

Powershell Scriting Approch

1. Finding the commands
use Get-Help, Get-Member and Poweshell Gallery as needed 

** had to reinstall Get and NuGet, make note of if having isues with connectvity to check staus and try these 

Install-PackageProvider -Name NuGet -Force -Scope CurrentUser

Install-Module PowerShellGet -Force -AllowClobber -Scope CurrentUser

Can check status with : Invoke-WebRequest https://www.powershellgallery.com/api/v2 -UseBasicParsing