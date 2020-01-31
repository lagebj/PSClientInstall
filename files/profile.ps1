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
"$env:HOME\.vscode\extensions\ms-vscode.powershell*\modules\PowerShellEditorServices\PowerShellEditorServices.psd1" | Import-Module