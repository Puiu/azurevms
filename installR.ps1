$path = 'C:\TempDownloads\Rwin.exe'
Start-Process -FilePath $path -ArgumentList "/SP-","/VERYSILENT","/NORESTART","/SUPPRESSMSGBOXES"