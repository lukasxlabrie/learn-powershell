#LABS

<# 1. Create two similar, but different, text files. Try comparing them by using Compare-
Object. Run something like this: 
Compare-Object -Reference (Get-ContentFile1.txt) -Difference (Get-Content File2.txt). 
If the files have only one line of text that’s different, the command should work.
#>

# See createCompare script

<# 2. What happens if you run Get-Command | Export-CSV commands.CSV | Out-File
from the console? Why does that happen? #>

<#looks lke it writes the output of Export-CSV to a file called commands.CSV, but it does not
actually create a CSV file. The reason is that Export-CSV does not write to the pipeline.
Instead, it writes to a file. The Out-File command then takes the output of Export-CSV
and writes it to a file called commands.CSV. The result is that the file commands.CSV
contains the text output of the Export-CSV command, not the actual CSV data.#>

<# 3. Apart from getting one or more jobs and piping them to Stop-Job, what other
means does Stop-Job provide for you to specify the job or jobs you want to
stop? Is it possible to stop a job without using Get-Job at all?#> 

<# Yes, you can use the -Id parameter to specify the job by its ID. 
You can also use the -Name parameter to specify the job by its name. 
It is possible to stop a job without using Get-Job by directly referencing the job's ID or name in the Stop-Job command.
#>

<# 4 What if you want to create a pipe-delimited file instead of a CSV file? You’d still
use the Export-CSV command, but what parameters would you specify? #>
# You would use the -Delimiter parameter to specify the pipe character (|) as the delimiter.
# Example: Export-CSV -Path "output.csv" -Delimiter "|"




<# 5 How do you include the type information in the # comment line at the top of
an exported CSV file? #>
# You can include the type information in the comment line at the top of an exported CSV file by using the -NoTypeInformation parameter with Export-CSV.
# Example: Export-CSV -Path "output.csv" -NoTypeInformation:$false


<# 6 Export-Clixml and Export-CSV both modify the system because they can create
and overwrite files. What parameter would prevent them from overwriting
an existing file? What parameter would ask whether you were sure before proceeding
to write the output file? #>
# The parameter that prevents overwriting an existing file is -NoClobber.
# The parameter that asks for confirmation before proceeding to write the output file is -Confirm.


<# 7 The operating system maintains several regional settings, which include a
default list separator. On US systems, that separator is a comma. How can you
tell Export-CSV to use the system’s default separator rather than a comma? #>
# You can tell Export-CSV to use the system's default separator by using the -Delimiter parameter and specifying the system's list separator.
# Example: $separator = [System.Globalization.CultureInfo]::CurrentCulture.TextInfo.ListSeparator
# Export-CSV -Path "output.csv" -Delimiter $separator
