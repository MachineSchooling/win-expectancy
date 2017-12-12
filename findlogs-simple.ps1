$source = "C:\"
$destination = "C:\mylogs\"
$filter = [regex] "^Match_.*\.dat$"
((Get-ChildItem -Path $source -recurse) -match $filter) | Copy-Item -Destination $destination
