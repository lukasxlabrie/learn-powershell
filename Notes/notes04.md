Lunch 04

Powershell does not add any additional security layers, it is intended to allow the current user to use thier current permissions to operate
It is designed to prevent the unintnetional running of scripts though 

Execution polify varies by device/OS, default is usually RemotedSigned

Can change by:
running Set-ExecutionPolicy, changes setting in HKEY
GPO
Manually running an .exe to overwrite the GPO and curretn setting

Policy settings are as follows:

Restricted—This is the default, and scripts aren’t executed. The only exceptions
are a few Microsoft-supplied scripts that set up PowerShell’s default configuration
settings. Those scripts carry a Microsoft digital signature and won’t
execute if modified.

AllSigned—PowerShell will execute any script that has been digitally signed by
using a code-signing certificate issued by a trusted certification authority (CA).

RemoteSigned—PowerShell will execute any local script and will execute
remote scripts if they’ve been digitally signed by using a code-signing certificate
issued by a trusted CA. Remote scripts are those that exist on a remote computer,
usually accessed by a Universal Naming Convention (UNC) path. Scripts
marked as having come from the internet are also considered remote. Edge,
Chrome, Firefox, and Outlook all mark downloads as having come from the
internet.

Unrestricted—All scripts will run.

Bypass—This special setting is intended for use by application developers who
are embedding PowerShell within their application. This setting bypasses the
configured execution policy and should be used only when the hosting application
is providing its own layer of script security. You’re essentially telling Power-
Shell, “Don’t worry. I have security covered.”

REMINDER: intended to protect only uninformed users from unintentionally running
anonymous scripts.

The execution policy isn’t intended to stop an informed user

Poweshell in short is running commands until you get them right, and then paste them into a text file and call it a script.

SYNTAX EXAMPLE:
Get-Command -Verb Get -Module PSReadLine,PowerShellGet -Syntax

- Get-Command: Cmdlet in Verb-Noun format.
- -Verb Get: Parameter with a simple value (no quotes needed).
- -Module PSReadLine,PowerShellGet: Comma-separated list of values.
- -Syntax: Switch parameter—no value required.
- Mandatory spaces separate cmdlet and parameters.
- Parameter names start with - and are not case sensitive.
