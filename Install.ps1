# Settings
[System.Diagnostics.CodeAnalysis.SuppressMessage('PSUseDeclaredVarsMoreThanAssigments', '')]
[string] $Name = 'PSClientInstall'

[System.Diagnostics.CodeAnalysis.SuppressMessage('PSUseDeclaredVarsMoreThanAssigments', '')]
[string] $ScriptRoot = [System.IO.Path]::Combine($env:SystemDrive,'git',$Name)

. $ScriptRoot\scripts\InstallApps.ps1 -ScriptRoot $ScriptRoot
. $ScriptRoot\scripts\CreateProfile.ps1 -ScriptRoot $ScriptRoot
. $ScriptRoot\scripts\ConfigureVSCode.ps1 -ScriptRoot $ScriptRoot

[hashtable] $ProcessParameters = @{
    FilePath = 'pwsh'
    ArgumentList = @(
        '-File',
        "$ScriptRoot\scripts\InstallModules.ps1",
        '-ScriptRoot',
        $ScriptRoot
    )
    NoNewWindow = $true
    Wait = $true
}

Start-Process @ProcessParameters