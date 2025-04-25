# WakeProxmox.ps1
$mac = "6c:0b:84:aa:dc:68"  # MAC address of the device to wake
$macBytes = $mac -split "[:-]" | ForEach-Object { [byte]::Parse($_, 'HexNumber') }

# Construct the magic packet
[byte[]]$packet = @(0xFF) * 6 + ($macBytes * 16)

# Send packet
$udpClient = New-Object System.Net.Sockets.UdpClient
$udpClient.EnableBroadcast = $true
$udpClient.Connect("255.255.255.255", 9)
$udpClient.Send($packet, $packet.Length) | Out-Null
$udpClient.Close()

Write-Host "✅ Magic packet sent to $mac" -ForegroundColor Green
