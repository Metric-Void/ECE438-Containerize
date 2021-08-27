
If($args.Length -eq 0) {
    Write-Host "Container ID unspecified."
    $id = Read-Host "Container Id"
} Else {
    $id = $args[0]
}

Write-Host "Starting Container $id"

docker run -itd --name ece438-$id --hostname ece438-$id -v $pwd/repo:/repo metricvoid/ece438:20210827 /bin/bash

Write-Host "Started Container with name ece348-$id"
Write-Host "You can attach to it with Attach-Container"

pause