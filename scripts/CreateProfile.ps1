# Create Powershell $profile
if (-not (Test-Path -Path $profile)) {
    $null = New-Item -Path $profile -ItemType File
}

# Populate $profile
[string] $ProfileData = @'
$env:PSScriptPath = "$env:USERPROFILE\Documents\PowerShell\Scripts"
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
'PackageManagement','Passphraser','Pester','platyPS','posh-git','PowerShellGet','psake','WindowsCompatibility' | Import-Module
'@
