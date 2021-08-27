Write-Host "Stopping all ECE 438 containers..."

docker container stop $(docker container ls -q --filter name=ece438-*)

Write-Host "All ECE438 containers stopped."

pause