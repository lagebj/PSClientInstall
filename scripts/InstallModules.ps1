. '..\files\modules.ps1'
Set-PSRepository -Name 'PSGallery' -InstallationPolicy Trusted
$Modules | Install-Module -Scope CurrentUser -AllowClobber