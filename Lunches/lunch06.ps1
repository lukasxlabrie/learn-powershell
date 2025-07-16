# Export process as a CSV file
Get-Process | Export-Csv processes.csv

# Import the CSV file and display its content
import-csv processes.csv
