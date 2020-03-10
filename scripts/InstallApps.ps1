Param(
    [string] $ScriptRoot
)

. "$ScriptRoot\files\applications.ps1"

foreach ($App in $Applications) {
    choco install -y $App --no-progress --limit-output
}