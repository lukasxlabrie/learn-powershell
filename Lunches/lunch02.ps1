# Lab 02 consists of finding certain cmlets here is the list and the answers

# how to update help
Update-Help

# cmdlet that converts cmdlet output into html
ConvertTo-Html

# cmdlet that redirects output into a file
Out-CurrentFile  

# cmdlets for working with processess
Enter-PSHostProcess               Cmdlet    Microsoft.PowerShell.Core Connects to and enters into an interactive session with a local process.
Exit-PSHostProcess                Cmdlet    Microsoft.PowerShell.Core Closes an interactive session with a local process.
Get-PSHostProcessInfo             Cmdlet    Microsoft.PowerShell.Core Gets process information about the PowerShell host.
Switch-Process                    Cmdlet    Microsoft.PowerShell.Core On Linux and macOS, the cmdlet calls the #`execv()` function to provide similar b…
Debug-Process                     Cmdlet    Microsoft.PowerShell.Man… Debugs one or more processes running on the local computer.
Get-Process                       Cmdlet    Microsoft.PowerShell.Man… Gets the processes that are running on the local computer.
Start-Process                     Cmdlet    Microsoft.PowerShell.Man… Starts one or more processes on the local computer.
Stop-Process                      Cmdlet    Microsoft.PowerShell.Man… Stops one or more running processes.
Wait-Process                      Cmdlet    Microsoft.PowerShell.Man… Waits for the processes to be stopped before accepting more input.

# cmldet used to set break point
Set-PSBreakpoint 

# cmdlets to create, modify, export and import aliases
Export-Alias                      Cmdlet    Microsoft.PowerShell.Uti… Exports information about currently defined aliases to a file.
Get-Alias                         Cmdlet    Microsoft.PowerShell.Uti… Gets the aliases for the current session.
Import-Alias                      Cmdlet    Microsoft.PowerShell.Uti… Imports an alias list from a file.
New-Alias                         Cmdlet    Microsoft.PowerShell.Uti… Creates a new alias.
Remove-Alias                      Cmdlet    Microsoft.PowerShell.Uti… Remove an alias from the current session.
Set-Alias                         Cmdlet    Microsoft.PowerShell.Uti… Creates or changes an alias for a cmdlet or other command in the current PowerShell

# How to keep a transcript of everything typed into the shell and save as text
Start-Transcript    

# How to get process by the name of process
Get-Process  

# How to have Get-Process tell you who started the process
Get-PSHostProcessInfo  

# Run a command on a remote host
Enter-PSHostProcess     

# Change character width parameter on the out-file cmdlet

# Prevent overwritting while using the outfile cmdlet

# Shortest way to get commands with process in the name
help*proc*
# Number of gerneic object cmdlets

# Find help about arrays