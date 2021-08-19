mkdir c:\TempDownloads
$acl = Get-Acl c:\TempDownloads
$permission = "Everyone","FullControl","Allow"
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule $permission
$acl.SetAccessRule($rule)
$acl | Set-Acl c:\TempDownloads