$fcpathreg = "HKLM:\SOFTWARE\Fortinet\FortiClient\Sslvpn\Tunnels\NEW_VPN_NAME"
if ((Test-Path -LiteralPath $fcpathreg) -ne $true) {
New-Item -Path HKLM:\SOFTWARE\Fortinet\FortiClient\Sslvpn\Tunnels\ -Name NEW_VPN_NAME 
New-ItemProperty -LiteralPath $fcpathreg -Name 'Server' -Value IP_PUBLIQUE -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath $fcpathreg -Name 'promptusername' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath $fcpathreg -Name 'promptcertificate' -Value 0 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath $fcpathreg -Name 'ServerCert' -Value '1' -PropertyType String -Force -ea SilentlyContinue;    
}
else {
Write-Output "Profile already exists, skipping..."
}
