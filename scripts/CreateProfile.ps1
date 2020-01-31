[string[]] $Profiles = @(
    "$env:HOME\Documents\PowerShell\Microsoft.VSCode_profile.ps1",
    "$env:HOME\Documents\WindowsPowerShell\Microsoft.VSCode_profile.ps1"
)

foreach ($File in $Profiles) {
    if (Test-Path -Path $File) {
        $null = Remove-Item -Path $File -Force
    }

    Copy-Item -Path '..\files\profile.ps1' -Destination $File
}
