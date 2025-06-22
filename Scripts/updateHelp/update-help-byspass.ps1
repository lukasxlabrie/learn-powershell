# Set UI culture explicitly to avoid mismatches
$UICulture = "en-US"

Write-Host "Starting Help Update with UI Culture: $UICulture"

try {
    Update-Help -UICulture $UICulture -ErrorAction SilentlyContinue
    Write-Host "Help update completed. Modules with missing help content were silently skipped."
}
catch {
    Write-Warning "An unexpected error occurred during help update: $_"
}