# Lab 02 consists of finding certain cmdlets

# how to update help
Update-Help

# cmdlet that converts cmdlet output into html
ConvertTo-Html

# cmdlet that redirects output into a file
Out-File

# cmdlets for working with processes
Enter-PSHostProcess               Cmdlet    Microsoft.PowerShell.Core    Connects to and enters into an interactive session with a local process.
Exit-PSHostProcess                Cmdlet    Microsoft.PowerShell.Core    Closes an interactive session with a local process.
Get-PSHostProcessInfo             Cmdlet    Microsoft.PowerShell.Core    Gets process information about the PowerShell host.
Switch-Process                    Cmdlet    Microsoft.PowerShell.Core    On Linux/macOS, calls `execv()` to provide process switching.
Debug-Process                     Cmdlet    Microsoft.PowerShell.Management   Debugs one or more processes running on the local computer.
Get-Process                       Cmdlet    Microsoft.PowerShell.Management   Gets the processes that are running on the local computer.
Start-Process                     Cmdlet    Microsoft.PowerShell.Management   Starts one or more processes on the local computer.
Stop-Process                      Cmdlet    Microsoft.PowerShell.Management   Stops one or more running processes.
Wait-Process                      Cmdlet    Microsoft.PowerShell.Management   Waits for the processes to be stopped before accepting more input.

# cmdlet used to set break point
Set-PSBreakpoint 

# cmdlets to create, modify, export and import aliases
Export-Alias                      Cmdlet    Microsoft.PowerShell.Utility   Exports information about currently defined aliases to a file.
Get-Alias                         Cmdlet    Microsoft.PowerShell.Utility   Gets the aliases for the current session.
Import-Alias                      Cmdlet    Microsoft.PowerShell.Utility   Imports an alias list from a file.
New-Alias                         Cmdlet    Microsoft.PowerShell.Utility   Creates a new alias.
Remove-Alias                      Cmdlet    Microsoft.PowerShell.Utility   Removes an alias from the current session.
Set-Alias                         Cmdlet    Microsoft.PowerShell.Utility   Creates or changes an alias for a cmdlet or other command in the current session.

# How to keep a transcript of everything typed into the shell and save as text
Start-Transcript    

# How to get process by the name of process
Get-Process  

# How to have Get-Process tell you who started the process
Get-CimInstance Win32_Process | Select-Object Name, @{Name='User';Expression={$_.GetOwner().User}}

# Run a command on a remote host
Invoke-Command -ComputerName <RemoteHostName> -ScriptBlock { Get-Process }

# Change character width parameter on the Out-File cmdlet
# -Width <System.Int32>

# Prevent overwriting while using the Out-File cmdlet
-NoClobber

# Shortest way to get commands with process in the name
Get-Command *proc*

# Number of generic object cmdlets
# 5 (Select-Object, Sort-Object, Measure-Object, Where-Object, ForEach-Object)

# Find help about arrays
Get-Help *arr*