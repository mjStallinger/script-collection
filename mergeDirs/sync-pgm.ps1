<#
	pgm from trunk synchronizer 

	This tool synchronizes content of the svn://trunk/pgm/ subdirectories to a specified output directory

	Creator:  Ing. Michael J. Stallinger (mjst.at)
	Created:  05.03.2019

#>

param(
  [string]$configFile = "$PSScriptRoot\settings.cfg"
)


Set-Variable -Option Constant -Name "PLATFORM_X86" -Value $(New-Object System.Management.Automation.Host.ChoiceDescription '&32 Bit (x86)', 'Copies to Win32 subdirectory');
Set-Variable -Option Constant -Name "PLATFORM_X64" -Value $(New-Object System.Management.Automation.Host.ChoiceDescription '&64 Bit (x64)', 'Copies to Win64 subdirectory');
Set-Variable -Option Constant -Name "PLATFORM_OPTIONS" -Value $([System.Management.Automation.Host.ChoiceDescription[]]($PLATFORM_X86, $PLATFORM_X64));

function GetChosenPlatform([int]$index)
{
  return $script:PLATFORM_OPTIONS[$index];
}


function Main()
{
  param(
    [string]$configFile = "$PSScriptRoot\settings.cfg",
    [int]$platform = $($host.UI.PromptForChoice("", "", $script:PLATFORM_OPTIONS, 0))
  )

  Write-Host "CFPath = $configFile";
  Write-Host "Choice = $platform";
  $bool = ($(GetChosenPlatForm($choice)) -eq $script:PLATFORM_X64);
  Write-Host "Lustig = $bool";
}


Main;

<#

switch(getPlatform)
{
  0 {Write-Host "x86" -ForegroundColor Green}
  1 {Write-Host "x64" -ForegroundColor Green}
  
}
#>


<#
param (
  [parameter(Mandatory=$true)]
  [ValidateSet("Low", "Average", "High")]
  [String[]]$Detail

  [string]$configFilePath = "$PSScriptRoot",
  [string]$workDir = "c:\work",
  [string]$outputSubDir = "outputD25",
  [string]$platform = "outputD25",
  [string]$version = "outputD25",
##  [Parameter(Mandatory=$true)][string]$username,
  [string]$password = $( Read-Host "Input password, please" )
)
#>

# Write-Host "CFPath  = $configFilePatsfd;osdhfgsdukfhh";
# Write-Host "workDir = $workDir";
# Write-Host "Password = $password";


Write-Host "Finished";


