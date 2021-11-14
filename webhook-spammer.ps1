$url = Read-Host -Prompt 'Enter webhook URL'
$message = Read-Host -Prompt 'Enter the message to send'
Do {
    Invoke-RestMethod -Uri $url -Method POST -Headers @{ "Content-Type" = "application/json" } -Body "{`"content`":`"$message @everyone`"}"
} Until (!$true)