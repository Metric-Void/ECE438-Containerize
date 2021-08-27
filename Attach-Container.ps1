If($args.Length -eq 0) {
    $id = Read-Host "Container Id"
} Else {
    $id = $args[0]
}

Write-Host "Attaching to Container ece438-$id"
Write-Host "You may need to press enter a few times to get the command prompt"
Write-Host "Use Ctrl-P Ctrl-Q to detach"
Write-Host "+================= Container ece438-$id =================+"
docker attach ece438-$id