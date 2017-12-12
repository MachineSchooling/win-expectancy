$source = "C:\"

$destination = "C:\mylogs\"

$filter = [regex] "^Match_.*\.dat$"

Get-ChildItem -Path C:\ -Recurse |
    Where-Object -Property Name -match $filter |
    Group-Object -Property Name |
    ForEach-Object {
        $Largest = $_.Group | Sort-Object -Property Length
        $Largest | Copy-Item -Destination $destination
    }
