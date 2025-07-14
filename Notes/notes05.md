**Filesystem Organization (PowerShell Context)**

* Item: Generic object in PowerShell (file, folder, registry key, etc.)
* Folder: Container for files and other folders
* File: Endpoint object; not a container
* ChildItem: Contents inside a container (e.g., files in a folder)
* ItemProperty: Metadata or attributes of an item (length, read-only, timestamp)

---

**Cmdlet Behavior**

* Generic cmdlets: Work across providers (filesystem, registry, ENV, etc.)
* FileSystem Provider: Does not support -UseTransaction
* Environment Provider (ENV:): No item properties; used for name/value variables only
* Item cmdlets: Accept both -Path and -LiteralPath parameters

---

**PSProvider (PowerShell Provider)**

* Definition: An adapter that exposes data (filesystem, registry, ENV, AD, etc.) as a navigable drive
* Examples: FileSystem, Registry, ENV, Active Directory, Certificate
* Appears like a drive in PowerShell but may map to non-filesystem sources

Common Capabilities:

* ShouldProcess: Enables -WhatIf and -Confirm
* Filter: Supports -Filter to narrow cmdlet operations faster than using Where-Object
* Credentials: Allows alternate credentials (varies by provider)

---

**PSDrives**

* PSDrive: Virtual drive mapped to a provider
* Examples: C:, ENV:, HKLM:, AD:, Cert:
* Linux/macOS: Root = / (PowerShell also accepts )
* Use Get-PSDrive to list available drives

---

**Navigating the Filesystem**

* Set-Location (cd): Changes current directory/path

  * Linux/macOS: cd /usr/bin
  * Windows: cd C:\Users\\
* Use Tab to autocomplete paths and command names
* Press Tab twice to cycle through multiple matches

---

**Path and Wildcards**

* * matches zero or more characters
* ? matches exactly one character
* Use quotation marks to separate items with spaces:

  * Correct: "thing 1" "thing 2"
  * Incorrect: "thing 1 thing 2"

---

**Using -Path**

* -Path accepts wildcards
* Positional: yes (Position 1)
* Wildcards: allowed
* Accepts pipeline input: true (ByValue, ByPropertyName)
* Default value: current directory (.)

Example:
Get-ChildItem -Path "C:\Scripts\y\*"

---

**Using -LiteralPath**

* -LiteralPath uses the value exactly as typed

* Wildcards are not interpreted

* Not positional; must be named explicitly

* Use single quotes to prevent escape characters from being interpreted

* Accepts pipeline input: true (ByValue, ByPropertyName)

* Accepts wildcard characters: false

Use when filenames contain \* or ? that should be treated as actual characters

Example:
Get-Item -LiteralPath 'variable?'

---

**Get-ChildItem**

* Purpose: Lists contents of a path (files, folders)
* Parameter: -Path \<String\[]>

  * Wildcards: allowed
  * Pipeline input: accepted
  * Default location: current directory (.)

---

**Verb-Noun Naming Pattern**

* Verb-Noun format is required for cmdlets
* Common Verbs: Get, Set, New, Copy, Move, Rename, Remove, Clear
* Item: Any object (file, folder, registry key)
* ItemProperty: Object metadata or characteristics

---
