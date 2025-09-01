Start-Sleep -s 30
Set-ExecutionPolicy -Scope CurrentUser Bypass -Force
$WantFolder1 = "C:\Program Files\FusionInventory-Agent"
$FolderExists1 = Test-Path $WantFolder1
if ( $FolderExists1 -eq $True ) {
Start-Process -NoNewWindow -FilePath "C:\Program Files\FusionInventory-Agent\Uninstall.exe" /S
}
# ======================================================
# ********** Verification deja installe
# =======================================================
$WantFolder1 = "C:\Program Files (x86)\GLPI-Agent\glpi-agent.bat"
#$WantFile2 = "C:\Program Files\F-Secure\PSB\fshoster32.exe"
$FolderExists1 = Test-Path $WantFolder1
#$FileExists2 = Test-Path $WantFile2
if ( $FolderExists1 -eq $True ) { Exit }
#if ( $FileExists2 -eq $True ) { Exit }
Start-Sleep -s 60
msiexec /i "\\SERVEUR_NAME\Applications$\GLPI-Agent-1.7.1-x64.msi" /quiet RUNNOW=1 EXECMODE=1 ADD_FIREWALL_EXCEPTION=1 DEBUG=1 TAG=NAME_TAG SERVER='http://X.X.X.X/glpi/front/inventory.php'
