If($args.Count -eq 0) {
    $id = [int](Read-Host "Container Id (Integer):")
} Else {
    $id = [int]$args[0]
}

$id_str = $id.ToString()
$ssh_portassign = ($id+43820).ToString()
$container_ip = $(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' ece438-$id_str)

ssh -lroot localhost -p $ssh_portassign