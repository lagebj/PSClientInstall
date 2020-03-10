Param(
    [string] $ScriptRoot
)

. "$ScriptRoot\files\modules.ps1"

Set-PSRepository -Name 'PSGallery' -InstallationPolicy Trusted

foreach ($Module in $Modules) {
    Install-Module -Name $Module -Scope CurrentUser -AllowClobber
}