$path = 'C:\TempDownloads'
mkdir $path
$acl = Get-Acl $path
$permission = "Everyone","FullControl","ContainerInherit,ObjectInherit","InheritOnly","Allow"
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule $permission
$acl.SetAccessRule($rule)
$acl | Set-Acl -Path $path