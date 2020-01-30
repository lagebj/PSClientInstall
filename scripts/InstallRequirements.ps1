# Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
Set-ExecutionPolicy RemoteSigned -Scope Process -Force

# Refresh environmental variables
$null = refreshenv

# Install pacakges
choco install -y git.install --params '/GitAndUnixToolsOnPath /NoGitLfs /SChannel /NoAutoCrlf /WindowsTerminal /NoShellIntegration' --no-progress --limit-output

# Create folders
[string[]] $Folders = @(
    "$env:SystemDrive\git",
    "$env:SystemDrive\temp",
    "$env:USERPROFILE\Documents\PowerShell\Scripts"
)

foreach ($Item in $Folders) {
    if (-not (Test-Path -Path $Item)) {
        $null = New-Item -Path $Item -ItemType Directory
    }
}

# Refresh environmental variables
$null = refreshenv

# Clone repository
Push-Location "$env:SystemDrive\git"
git config --global user.name 'lagebj'
git config --global user.email 'lage.berger.jensen@outlook.com'
git clone https://github.com/lagebj/PSClientInstall.git
Pop-Location