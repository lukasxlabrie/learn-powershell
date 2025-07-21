# Export process as a CSV file
Get-Process | Export-Csv processes.csv

# Import the CSV file and display its content
import-csv processes.csv

# Export process as a JSON file
Get-Process | ConvertTo-Json | Out-File procs.json

# Import the JSON file and display its content
Get-Content ./procs.json | ConvertFrom-Json

#LABS
<# 1. Create two similar, but different, text files. Try comparing them by using Compare-
Object. Run something like this: Compare-Object -Reference (Get-Content
File1.txt) -Difference (Get-Content File2.txt). If the files have only one
line of text that’s different, the command should work.
#>

<# 2. What happens if you run Get-Command | Export-CSV commands.CSV | Out-File
from the console? Why does that happen? #>


<# 3. Apart from getting one or more jobs and piping them to Stop-Job, what other
means does Stop-Job provide for you to specify the job or jobs you want to
stop? Is it possible to stop a job without using Get-Job at all?#> 


<# 4 What if you want to create a pipe-delimited file instead of a CSV file? You’d still
use the Export-CSV command, but what parameters would you specify? #>


<# 5 How do you include the type information in the # comment line at the top of
an exported CSV file? #>


<# 6 Export-Clixml and Export-CSV both modify the system because they can create
and overwrite files. What parameter would prevent them from overwriting
an existing file? What parameter would ask whether you were sure before proceeding
to write the output file? #>


<# 7 The operating system maintains several regional settings, which include a
default list separator. On US systems, that separator is a comma. How can you
tell Export-CSV to use the system’s default separator rather than a comma? #>