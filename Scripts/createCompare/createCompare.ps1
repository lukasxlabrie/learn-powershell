# Best practice: Always start with a transcription to log the script's output
# This will create a log file in the specified path
Start-Transcript -Path "C:\Users\lukas\OneDrive\Documents\learn-powershell\learn-powershell\Scripts\logs\createCompare.log"

# adds text to the log file
Write-Host "Starting the script to compare two text files..." -ForegroundColor Cyan

# adds a timestamp to the log file
Get-Date 

# creates 2 new files in the current directory
New-Item -Path . -Name "Example1.txt" -ItemType File
New-Item -Path . -Name "Example2.txt" -ItemType File
write-host "Created Example1.txt and Example2.txt" -ForegroundColor Yellow

# writes content to the files, alternatively you can use 2 files you already have
"Easy Peasey Lemon Squeezy" | Set-Content -Path ".\Example1.txt"
"Easy Peasey Lemon Squeezy Curtail Simpson Target Breezey" | Set-Content -Path ".\Example2.txt"

Compare-Object -ReferenceObject (Get-Content Example1.txt) -DifferenceObject (Get-Content Example2.txt)
Write-Host "Compared Example1.txt and Example2.txt" -ForegroundColor Yellow

Stop-Transcript