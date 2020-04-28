<#
	directory merger

	This tool merges a set of directories based on configuration into one directory

	Creator:  Ing. Michael J. Stallinger (mjst.at)
	Created:  06.03.2019
#>

param(
  [string]$configFile = "$PSScriptRoot\settings.cfg"
)

class DirectoryConfig
{
  [ValidateNotNullOrEmpty()][string]$Key;
  [ValidateNotNullOrEmpty()][string]$Directory;
  [string]$Description;

  DirectoryConfig([string]$key, [string]$directory) {
    $this.Key = $key
    $this.Directory = $directory      
  }

  DirectoryConfig([string]$key, [string]$directory, [string]$description) {
    $this.Key = $key
    $this.Directory = $directory
    $this.Description = $description
  }
}

[DirectoryConfig]$myDI1 = [DirectoryConfig]::New("s","z", "wse");
[DirectoryConfig]$myDI2 = [DirectoryConfig]::New("nn","z");

# [DirectoryConfig]$myDI1 = [DirectoryConfig]@{Key="x";Directory="y";Description="sd"};


# [DirectoryConfig]$myDI2 = [DirectoryConfig]@{
#   Key="x"
#   Directory="y"
#   Description="sd"};

$myDI3 = New-Object DirectoryConfig "x86", "opies to Win32 subdirectory", "1z";

$basicDirs = "testA", "testB";

Write-Host $myDI1.Key;
Write-Host $myDI3.Key;


$x86 = New-Object System.Management.Automation.Host.ChoiceDescription 'x86', 'Copies to Win32 subdirectory';
$x64 = New-Object System.Management.Automation.Host.ChoiceDescription 'x64', 'Copies to Win32 subdirectory';
# # $x862 = $x86;
$array = [System.Management.Automation.Host.ChoiceDescription[]]($x86, $x64);

# # Write-Host ($x86 -eq $x862);
# # Write-Host ($x86 -eq $x64);
# # Write-Host ($x86 -eq $array[1]);

# Set-Variable -Option Constant -Scope private -Name "PLATFORM_X86bap" -Value $x86;
# Set-Variable -Option Constant -Scope Script -Name "PLATFORM_X64" -Value $x64;
# Set-Variable -Option Constant -Scope Script -Name "PLATFORM_OPTIONS" -Value $([System.Management.Automation.Host.ChoiceDescription[]]($PLATFORM_X86, $PLATFORM_X64));

# Write-Host ($x86 -eq $PLATFORM_X86);
# Write-Host ($PLATFORM_X86 -eq $PLATFORM_OPTIONS[0]);
[int]$platform = $($host.UI.PromptForChoice("", "", $array, 0));

Write-Host $platform;
# Write-Host ($PLATFORM_OPTIONS[$platform] -eq $PLATFORM_X86);

# # Set-Variable -Option Constant -Name "PLATFORM_OPTIONS" -Value $([System.Management.Automation.Host.ChoiceDescription[]]($PLATFORM_X86, $PLATFORM_X64));

# # function GetChosenPlatform([int]$index)
# # {
# #   return $script:PLATFORM_OPTIONS[$index];
# # }


# # function Main()
# # {
# #   param(
# #     [string]$configFile = "$PSScriptRoot\settings.cfg",
# #     [int]$platform = $($host.UI.PromptForChoice("", "", $script:PLATFORM_OPTIONS, 0))
# #   )

# #   Write-Host "CFPath = $configFile";
# #   Write-Host "Choice = $platform";
# #   $bool = ($(GetChosenPlatForm($choice)) -eq $script:PLATFORM_X64);
# #   Write-Host "Lustig = $bool";
# # }


# # Main;

# # <#

# # switch(getPlatform)
# # {
# #   0 {Write-Host "x86" -ForegroundColor Green}
# #   1 {Write-Host "x64" -ForegroundColor Green}
  
# # }
# # #>


# # <#
# # param (
# #   [parameter(Mandatory=$true)]
# #   [ValidateSet("Low", "Average", "High")]
# #   [String[]]$Detail

# #   [string]$configFilePath = "$PSScriptRoot",
# #   [string]$workDir = "c:\work",
# #   [string]$outputSubDir = "outputD25",
# #   [string]$platform = "outputD25",
# #   [string]$version = "outputD25",
# # ##  [Parameter(Mandatory=$true)][string]$username,
# #   [string]$password = $( Read-Host "Input password, please" )
# # )
# # #>

# # # Write-Host "CFPath  = $configFilePatsfd;osdhfgsdukfhh";
# # # Write-Host "workDir = $workDir";
# # # Write-Host "Password = $password";


Write-Host "Finished";


