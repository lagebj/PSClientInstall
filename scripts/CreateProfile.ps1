# Create Powershell $profile for VS Code
$VsCodeProfile = "$env:HOME\Documents\PowerShell\Microsoft.VSCode_profile.ps1"
if (-not (Test-Path -Path $VsCodeProfile)) {
    $null = New-Item -Path $VsCodeProfile -ItemType File
}

# Populate $profile
[string] $ProfileData = @'
$env:PSScriptPath = "$env:USERPROFILE\Documents\PowerShell\Scripts"
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

'PackageManagement',
'Passphraser',
'Pester',
'platyPS',
'posh-git',
'PowerShellGet',
'psake',
'WindowsCompatibility',
"$HOME\.vscode\extensions\ms-vscode.powershell*\modules\PowerShellEditorServices\PowerShellEditorServices.psd1" | Import-Module
'@

Add-Content -Path $VsCodeProfile -Value $ProfileData
