#!/usr/bin/pwsh

$raw_response = Invoke-WebRequest -Uri "https://icanhazdadjoke.com" -Headers @{"accept"="application/json"}
$response = ConvertFrom-Json -InputObject $raw_response
if ($response.status -eq "200") {
    Write-Host $response.joke
}
else {
    Write-Host "Error! Unable to retrive dad joke."
}

