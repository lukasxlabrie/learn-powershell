Mastering the help system is the key to becoming a PowerShell expert
The help system is vital to building PowerShell skills
It helps identify which commands to use based on the situation
Shows how to properly run commands, which helps when troubleshooting errors
Explains how commands relate to each other

Going forward, you’ll need to use the help system to complete exercises
Always read the help section for each command to get used to it
Also use help to learn the correct syntax

If local help is not installed, update it using:
`Update-Help`
Run this about once a month to stay current
To save a local copy of the help files:
`Save-Help`

To search help:
`help <search term>`
Use Tab to autofill, press Tab twice to browse more options
Use Q to quit out of help view

Note: `help` is a function, not a cmdlet
`Get-Help` is the actual cmdlet

"Commands" is a general term that includes cmdlets, functions, aliases, and scripts
Cmdlets are specific to PowerShell
Functions are reusable code blocks
Objects are the results returned by commands
Events relate to system or application triggers

Parameter Sets:
Used to define different ways a cmdlet can be used
Each set includes specific parameters that can't be used together

Common Parameters:
Available with most cmdlets (e.g., -Verbose, -Debug)

Optional Parameters:
Do not need to be specified, shown in help without brackets

Mandatory Parameters:
Must be included, shown in help inside brackets: `[]`

Positional Parameters:
Do not need to be named if placed in the correct order
Use full parameter names until you're confident

To find positional parameters:
Use `Get-Help <cmdlet> -Full` and look at the POSITION field

Parameter Values:
Show accepted input types for each parameter