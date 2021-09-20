
If($args.Count -eq 0) {
    $id = [int](Read-Host "Container Id (Integer):")
} Else {
    $id = [int]$args[0]
}

$id_str = $id.ToString()
$ssh_portassign = ($id+43820).ToString()

Write-Host "Starting Container $id"

$container_id = $(docker run -itd --name ece438-$id --hostname ece438-$id -p ${ssh_portassign}:22 -v $pwd/repo:/repo metricvoid/ece438:20210919.b0)

$container_ip = $(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $container_id)

Write-Host "Started Container with name ece348-$id"
Write-Host "You can attach to it with Attach-Container ${id}"
Write-Host "You can also access this container with SSH at localhost:${ssh_portassign}. Password for root is root"
Write-Host "SSH commandline: ssh -lroot localhost -p ${ssh_portassign}"
pause