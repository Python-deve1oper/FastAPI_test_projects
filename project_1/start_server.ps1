$url = "http://127.0.0.1:8000/"
$log_name = "log_server.txt"
$currentTime = (Get-Date).ToString("`ndd-MM-yy HH:mm:")
$currentTime | Out-File -FilePath ".\$log_name" -Append
Start-Process $url
uvicorn main:app --reload  | Tee-Object -FilePath $log_name -Append