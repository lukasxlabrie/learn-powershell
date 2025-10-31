# 1. cmdlet for producing a radnom numbe
Get-Random

# 2. cmdlet that displays current date/time
Get-Date 

# 3. the kind of object produced from the above
# Property

# 4. use cmdlet from task 2 to and Select-Object to get only today
Get-Date |Select-Object -Property Day

# 5. cmdlet to show you all the times in a directory
Get-ChildItem "path to dir"  Select-Object Name, CreationTime, LastWriteTime, LastAccessTime

# 6. use cmdlet from task 5 to show times of your choice, sort by time, show only display name
Get-ChildItem "path to dir" | Sort-Object -CreationTime | Select-Object -ExpandProperty Name

# 7. repeat the above but sort by last write time and display filename, creation time, and last write time, save as CSV and html
####