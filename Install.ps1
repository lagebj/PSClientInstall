. .\scripts\InstallApps.ps1
. .\scripts\CreateProfile.ps1
. .\scripts\ConfigureVSCode.ps1

[hashtable] $ProcessParameters = @{
    FilePath = 'pwsh'
    ArgumentList = @(
        '-File',
        '.\InstallModules.ps1'
    )
    NoNewWindow = $true
    Wait = $true
}

Start-Process @ProcessParameters