Param(
    [string] $ScriptRoot
)

. "$ScriptRoot\files\vscode-extensions.ps1"
foreach ($Extension in $VSCodeExtensions) {
    [hashtable] $ProcessParameters = @{
        FilePath = 'code'
        ArgumentList = @(
            '--install-extension',
            $_,
            '--force'
        )
        NoNewWindow = $true
        Wait = $true
    }
    Start-Process @ProcessParameters
}

if (Test-Path -Path "$env:APPDATA\Roaming\Code\User\settings.json") {
    $null = Remove-Item -Path "$env:APPDATA\Roaming\Code\User\settings.json" -Force
}

Copy-Item -Path "$ScriptRoot\files\settings.json" -Destination "$env:APPDATA\Roaming\Code\User" -Force