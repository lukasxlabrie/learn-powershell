# Export process as a CSV file
Get-Process | Export-Csv processes.csv

# Import the CSV file and display its content
import-csv processes.csv

# Export process as a JSON file
Get-Process | ConvertTo-Json | Out-File procs.json

# Import the JSON file and display its content
Get-Content ./procs.json | ConvertFrom-Json