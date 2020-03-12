#!/usr/bin/pwsh

$raw_response = Invoke-WebRequest -Uri "http://api.icndb.com/jokes/random?exclude=[explicit]"
$response = ConvertFrom-Json -InputObject $raw_response
if ($response.type -eq "success") {
    Write-Host $response.value.joke
}
else {
    Write-Host "Error! Unable to retrive Chuck Norris joke."
}

