Param(
    [string] $ScriptRoot
)

. "$ScriptRoot\files\applications.ps1"

$Applications.GetEnumerator() | ForEach-Object {
    if ($_.Value) {
        choco install -y $App --params ""$($_.Value)"" --no-progress --limit-output
    } else {
        choco install -y $App --no-progress --limit-output
    }
}