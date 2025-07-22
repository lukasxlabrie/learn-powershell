# Best practice: Always start with a transcription to log the script's output
# This will create a log file in the specified path
Start-Transcription -Path "C:\Users\lukas\OneDrive\Documents\learn-powershell\learn-powershell\Scripts\logs"

# adds a timestamp to the log file
Get-Date 

# creates 2 new files in the current directory
New-Item -Path . -Name "Example1.txt" -ItemType File
New-Item -Path . -Name "Example2.txt" -ItemType File

Stop-Transcription