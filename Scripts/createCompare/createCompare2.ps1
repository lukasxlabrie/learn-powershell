### The idea here is that you've changed firewall rules on a system 
### and you want to capture the current state of those rules to compare
### against a previous state of those rules

# This will create a log file in the specified path, needed to help with debugging and rollbacks
Start-Transcript -Path "C:\Users\lukas\OneDrive\Documents\learn-powershell\learn-powershell\Scripts\logs\firewallcompare.log"

# adds text to the log file, without this it's empty
Write-Host "Starting the script to check the firewall rules..." -ForegroundColor Cyan

# adds a timestamp to the log file, makes it easier to track actions and organize the log
Get-Date

# Timestamped filename for versioning
$timestamp = Get-Date -Format "yyyyMMdd_HHmmss"
$currentExport = ".\currentFirewall_$timestamp.csv"

# Gets all firewall rules, filters them for better output, and exports to a CSV file in current folder
Get-NetFirewallRule |
  Select-Object Group, Name, DisplayName, Enabled, Direction, Action |
  Sort-Object Group, Name |
  Export-Csv -Path $currentExport -NoTypeInformation

Write-Host "Exported current firewall rules to $currentExport" -ForegroundColor Cyan

# to compare remove the # below and provide a previous export file
# Assuming you have a previous export of firewall rules to compare against
# Update the path below to point to your previous snapshot
# $previousExport = ".\previousFirewall.csv"

# Compares current export with previous snapshot and saves differences
# Compare-Object -ReferenceObject (Import-Csv $previousExport) -DifferenceObject (Import-Csv $currentExport) -Property Name, Enabled, Direction, Action -PassThru |
  # Out-File ".\firewall_diff_$timestamp.txt"

# Write-Host "Compared firewall rules and saved differences to firewall_diff_$timestamp.txt" -ForegroundColor Yellow

Stop-Transcript