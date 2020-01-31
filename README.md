# PSClientInstall

This is a set of Powershell scripts that installs and configures most of the software I use on my computer for administration and development. Some things are slightly difficult to automate, so I still have some manual installation steps, but at least it's all documented here.

This is a work in progress, and is mostly a means for me to document my current computer setup. I'll be evolving this set of scripts over time.

See also:
[Mac Development Ansible Playbook](https://github.com/geerlingguy/mac-dev-playbook) - the original inspiration for this repo.

## Installation
```powershell
PS C:\> Invoke-RestMethod -Uri https://raw.githubusercontent.com/lagebj/PSClientInstall/master/scripts/InstallRequirements.ps1 -OutFile "$env:TEMP\InstallRequirements.ps1"

PS C:\> . "$env:TEMP\InstallRequirements.ps1"

PS C:\> Set-Location C:\git\PSClientInstall

PS C:\> . .\Install.ps1
```
> Note: If one or more commands fail you might need to restart Powershell and run InstallRequirements.ps1 and/or Install.ps1 again. This is because ofchanges to `PATH`.

## Applications and configuration
#### Chocolatey
- Powershell Core
- Visual Studio Code
- Sysinternals
- Putty
- Notepad++
- Bitwarden
- Brave
- Greenshot
- Irfanview

#### Powershell profiles
Powershell profiles for Visual Studio Code are created for Powershell Core and Windows Powershell. See [profile.ps1](files/profile.ps1).

#### Directories
`C:\git` and `C:\temp` are created.
