# Install Chocolatey.
Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Install pacakges
choco install -y git.install --params '/GitAndUnixToolsOnPath /NoGitLfs /SChannel /NoAutoCrlf /WindowsTerminal /NoShellIntegration'
choco install -y powershell-core
choco install -y vscode

# Create Powershell profile file.
if (-not Test-Path -Path $profile) {
    New-Item -Path $profile -ItemType File
}

# Populate $profile
$profileSettings = @(
    '$env:PSScriptPath = "$env:USERPROFILE\Documents\PowerShell\Scripts"',
    '[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12'
)

