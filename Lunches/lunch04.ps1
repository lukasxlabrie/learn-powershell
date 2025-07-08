# see current execution policy
Get-ExecutionPolicy

# change execution policy
Set-ExecutionPolicy

# find parameter aliases example
PS /Users/james> (get-command get-process | select -Expandparameters).erroraction.aliases

# lab

# Display a list of running processes.
Get-Process

# Test the connection to google.com or bing.com without using an external command like ping.
Test-Connection -TargetName

# Display a list of all commands that are of the cmdlet type. 
#(This is tricky—we’ve shown you Get-Command, but you need to read the help to find out how to narrow down the list as we’ve asked.)
Get-Command -CommandType Cmdlet

# Display a list of all aliases.
Get-Command -Alias
 
# Make a new alias, so you can run ntst to run netstat from a PowerShell prompt.
New-Alias -Name "ntst" -Value "netstat" -Description "Alias for netstat command" -Option None

# Display a list of processes that begin with the letter p. Again, read the help for the necessary command—and don’t forget that the asterisk (*) is a near-universal
# wildcard in PowerShell.
Get-Process -Name p* 

# Make a new folder (aka directory) using the New-Item cmdlet with the name of MyFolder1. 
New-Item -Path . -Name "MyFolder1" -ItemType "File"

# Then do it again and call it MyFolder2. Use Help if you’re not familiar with New-Item.
New-Item -Path . -Name "MyFolder2" -ItemType "File"

# Remove the folders from step 7 in a single command. Use Get-Command to find a similar cmdlet to what we used in step 7—and don’t