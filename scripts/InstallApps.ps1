. '..\files\applications.ps1'
choco install -y $($Applications -join ' ') --no-progress --limit-output