**PowerShell Help System – Mastery Guide**

Mastering the help system is the key to becoming a PowerShell expert
The help system is vital to building PowerShell skills
It helps identify which commands to use based on the situation
Shows how to properly run commands, which helps when troubleshooting errors
Explains how commands relate to each other and fit into broader tasks

You will need to use the help system regularly to complete exercises
Always read the help section for each command to get used to its structure and usage
Use the help system to learn proper syntax and parameter rules

---

**Using the Help System**

If local help is not installed, update it using:
`Update-Help`
Run this about once a month to stay current

To save a local copy of help files:
`Save-Help`

To search help:
`help <search term>`
or
`Get-Help <search term>`

Use Tab to autofill command names
Press Tab twice to browse multiple possibilities
Use `q` to quit the help view

Note:
`help` is a **function**
`Get-Help` is the actual **cmdlet**

---

**Understanding PowerShell Terms**

Commands – umbrella term that includes:

* Cmdlets (PowerShell-native commands like `Get-Process`)
* Functions (user-defined or script-defined commands)
* Scripts (files with .ps1 extension)
* Aliases (shortened command names like `gci` for `Get-ChildItem`)

Cmdlets – PowerShell-specific commands, follow the Verb-Noun format
Functions – blocks of code you can define and reuse
Objects – the output of most PowerShell commands
Events – triggers or responses in the system or application

---

**Parameters and Syntax**

**Parameter Sets** – groups of parameters that define different valid uses of a command
Parameters in different sets usually can’t be used together

**Common Parameters** – available to most cmdlets (e.g., `-Verbose`, `-Debug`, `-ErrorAction`)

**Optional Parameters** – do not need to be specified; help shows them **without brackets**

**Mandatory Parameters** – must be included; help shows them **inside brackets** `[]`

**Positional Parameters** – don’t need names if placed in correct order
Use full parameter names until you're confident
To find positions, run:
`Get-Help <cmdlet> -Full` and look for the POSITION field

**Parameter Values** – show what input is expected (e.g., string, int, object)

**Switches** – parameters that act like on/off flags (no value needed), e.g., `-Recurse`

Use quotation marks to separate items with spaces:
Correct: `"thing 1" "thing 2"`
Incorrect: `"thing 1 thing 2"`

---

**Examples and Syntax Help**

To find example uses:
`Get-Help <command> -Examples`
or
`<cmdlet> -?` (shortcut for full help with examples)

---

**Cmdlet Syntax Breakdown Example**

Cmdlet:

```powershell
Get-ChildItem -Path "C:\Users" -Recurse -Force
```

Breakdown:
`Get-ChildItem` → Cmdlet (gets the items and child items in a location)
`-Path` → Named parameter (specifies where to look)
`"C:\Users"` → Parameter value (a string, must be in quotes if it contains spaces)
`-Recurse` → Switch (includes all subfolders, no input value required)
`-Force` → Switch (includes hidden/system files, no input value required)

Use `Get-Help Get-ChildItem -Full` to see all parameter sets, positions, and examples