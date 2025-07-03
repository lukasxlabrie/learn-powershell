 PowerShell Execution Policy & Script Basics

Security Model
- PowerShell does not provide additional security layers.
- It uses the current user’s privileges to run commands.
- Designed to prevent unintentional execution of scripts—not to block skilled users.

Execution Policy (EP)
- Default varies by OS/device. Common default: `RemoteSigned`.
- EP determines how scripts are validated before running.

How to Change It
- Run `Set-ExecutionPolicy` (updates registry key under `HKLM` or `HKCU`).
- Apply via Group Policy (GPO).
- Execute a custom `.exe` to override GPO + registry settings.

Policy Types

| Policy        | Description                                                                 |
|---------------|-----------------------------------------------------------------------------|
| **Restricted**   | Default. No script execution except Microsoft-signed config scripts.         |
| **AllSigned**    | Only scripts signed with trusted CA certs will run.                          |
| **RemoteSigned** | Local scripts run freely. Remote scripts must be signed (Internet, UNC path).|
| **Unrestricted** | All scripts run; user sees a security warning for remote scripts.            |
| **Bypass**       | No restrictions. Used by applications embedding PowerShell. Trust is external.|

Execution Policy is a user safeguard, not a security boundary.


How PowerShell Is Used
_"Write commands. Test. Refine. Paste into a text file. Voilà—script!"_

Syntax Example:

Get-Command -Verb Get -Module PSReadLine,PowerShellGet -Syntax


- `Get-Command`: Cmdlet in Verb-Noun format.
- `-Verb Get`: Simple parameter (no quotes).
- `-Module`: Takes multiple values (comma-separated).
- `-Syntax`: Switch parameter (no value).
- Mandatory spaces between cmdlet and parameters.
- Parameters start with `-` and are not case sensitive.

** If the parameter has a value, a space will come between the parameter
name and its value.


PowerShell Command Components

| Term         | Description                                                                 |
|--------------|-----------------------------------------------------------------------------|
| **Cmdlet**       | Native PowerShell command (e.g., `Get-Command`). .NET-based.                |
| **Function**     | Scripted command written in PowerShell itself.                              |
| **Application**  | External executable like `ping`, `ipconfig`.                                |
| **Command**      | Generic term covering all of the above.                                     |

Cmdlet Notes
- Unique to PowerShell. Search for "cmdlet" to filter relevant info.
- Pronounced: _command-let_

Shortcuts (Power User Tricks)
Aliases: Nicknames for commands (e.g., `gcm` for `Get-Command`).
Truncated parameters: `-Ver` works for `-Verb` if unambiguous.
Positional parameters: Skip names entirely if order is correct.
Parameter aliases: Use known alternatives.

Not every external command works smoothly in PowerShell.

PowerShell’s parser may misread complex or parameter-heavy commands, causing errors.

Reliable Fix: Use Variables + Call Operator & Powershell
Copy
Edit
$exe = "func"
$action = "new"
$language = "powershell"
$template = "HttpTrigger"
$name = "myFunc"
& $exe $action -l $language -t $template -n $name
Treats each piece as a single, safe unit. Prevents Powershell from misparing parameters.

Wrapping values in variables + using & avoids misinterpretation.

Easier Fix (PowerShell v3+): Use --%
--% tells PowerShell to stop parsing the rest—just send it raw.

Caution: Variables won’t work:

powershell
Copy
Edit
$name = "MyFunc"
func new -t HttpTrigger -n --% $name   # ❌ Fails – $name not expanded

Example Command Breakdown (func CLI):
new = action

-l = language

-t = template

-n = function name

Use Case	                Best Approach
Need variable support	    & + variable style
Quick + literal input	    --% passthrough
