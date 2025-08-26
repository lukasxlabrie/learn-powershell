# Best practice: Always start with a transcription to log the script's output
# Use colors to make the output more readable

Start-Transcript -Path "C:\Users\lukas\OneDrive\Documents\learn-powershell\learn-powershell\Scripts\logs\compressFiles.log"

Write-Host "Starting the script to compress files into a ZIP archive..." -ForegroundColor Cyan
Get-Date

# Define source files and destination ZIP
$sourceFiles = @(".\Example1.txt", ".\Example2.txt")
$zipPath = ".\ArchivedFiles.zip"

Write-Host "Preparing to compress the following files:" -ForegroundColor Cyan
$sourceFiles | ForEach-Object { Write-Host $_ -ForegroundColor Gray }

# Check if ZIP already exists and remove it if -Force is intended
if (Test-Path $zipPath) {
    Write-Host "Existing archive found. Removing it to apply -Force logic..." -ForegroundColor DarkYellow
    Remove-Item $zipPath -Force
}

# Compress the files
Compress-Archive -Path $sourceFiles -DestinationPath $zipPath -CompressionLevel Optimal
Write-Host "Files compressed successfully into $zipPath" -ForegroundColor Green

# Confirm archive creation
if (Test-Path $zipPath) {
    Write-Host "Archive verified at $zipPath" -ForegroundColor Green
} else {
    Write-Host "Archive creation failed!" -ForegroundColor Red
}

Stop-Transcript

# End of script