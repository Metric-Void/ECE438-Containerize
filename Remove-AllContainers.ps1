Write-Host "Removing all ECE 438 containers..."

docker rm -f $(docker container ls -q -a --filter name=ece438-*)

Write-Host "All ECE438 containers has been removed."

pause