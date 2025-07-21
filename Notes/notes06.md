## 1. Pipelines Overview

PowerShell uses pipelines (`|`) to pass the output of one command into another.

**Example:**

```powershell
Get-Process | Sort-Object CPU -Descending | Select-Object -First 5
```

* Gets all running processes
* Sorts by CPU usage
* Selects the top 5

---

## 2. Exporting Data

### Supported Formats:

| Format | Best Use Case                   | Cmdlet           |
| ------ | ------------------------------- | ---------------- |
| TXT    | Plain text logging              | `Out-File`       |
| CSV    | Flat tabular data (Excel)       | `Export-Csv`     |
| JSON   | APIs and nested structures      | `ConvertTo-Json` |
| CLIXML | Preserves full object type info | `Export-Clixml`  |

### Examples:

```powershell
Get-Process | Export-Csv "processes.csv" -NoTypeInformation
Get-Command | Out-File "commands.txt"
Get-Process | ConvertTo-Json | Out-File "processes.json"
Get-Process | Export-Clixml "processes.xml"
```

---

## 3. Importing Data

### Import Cmdlets (Always use matching pairs):

| Exported With   | Import With                   |
| --------------- | ----------------------------- |
| `Export-Csv`    | `Import-Csv`                  |
| `Export-Clixml` | `Import-Clixml`               |
| `Out-File`      | `Get-Content` (raw text only) |

**Correct:**

```powershell
Import-Csv "processes.csv"
Import-Clixml "processes.xml"
```

**Incorrect:**

```powershell
Get-Content "processes.csv"  # Returns unstructured text
```

---

## 4. Summary: Export/Import Formats

| Format   | Nested Data | Editable in Excel | Preserves Object Types |
| -------- | ----------- | ----------------- | ---------------------- |
| CSV      | No          | Yes               | No                     |
| JSON     | Yes         | No                | No                     |
| CLIXML   | Yes         | No                | Yes                    |
| Out-File | No          | No                | No                     |

---

## 5. Out-File vs Redirect `>`

```powershell
Dir > DirectoryList.txt           # Redirect shortcut
Dir | Out-File "DirectoryList.txt"  # Full control
```

Use `Out-File` when you need:

* Encoding control (`-Encoding UTF8`)
* File width adjustment (`-Width 200`)
* Appending data (`-Append`)

**Default width is 80 columns. Adjust with `-Width`.**

```powershell
Get-Process | Out-File "procs.txt" -Width 200 -Encoding UTF8
```

---

## 6. Generating HTML Reports

Convert tabular data to HTML:

```powershell
Get-Process -Id $PID | ConvertTo-Html
```

Displays raw HTML in terminal.

To save to file:

```powershell
Get-Process | ConvertTo-Html | Out-File "processes.html"
```

Add CSS styling:

```powershell
Get-Service | ConvertTo-Html -CssUri "style.css" | Out-File "report.html"
```

---

## 7. `Compare-Object`

Compare two object sets:

```powershell
Compare-Object -ReferenceObject (Import-Clixml "before.xml") `
               -DifferenceObject (Get-Process) `
               -Property Name
```

**Output:**

```
Name      SideIndicator
notepad   <=     # only in reference
chrome    =>     # only in current
```

### Why Use Parentheses?

```powershell
# Correct
-ReferenceObject (Import-Clixml "before.xml")

# Incorrect
-ReferenceObject Import-Clixml "before.xml"  # Fails
```

Parentheses force execution order.

---

## 8. Common Pipeline Pairings

| Get Cmdlet    | Compatible Action Cmdlet  |
| ------------- | ------------------------- |
| `Get-Process` | `Stop-Process`            |
| `Get-Service` | `Restart-Service`         |
| `Get-Job`     | `Receive-Job`, `Stop-Job` |

**Example:**

```powershell
Get-Process -Name notepad | Stop-Process
```

**Bad Example:**

```powershell
Get-Process | New-Alias  # Incompatible data types
```

---

## 9. Confirming and Testing Cmdlets

Some cmdlets modify system state and have a defined **impact level**.

### `$ConfirmPreference`

```powershell
$ConfirmPreference  # Default: High
```

When a cmdlet’s impact ≥ `$ConfirmPreference`, PowerShell asks for confirmation.

Force confirmation:

```powershell
Stop-Process -Confirm
```

Simulate without executing:

```powershell
Stop-Process -Name notepad -WhatIf
```

### Summary

| Parameter            | Purpose                            |
| -------------------- | ---------------------------------- |
| `-Confirm`           | Prompt before executing            |
| `-WhatIf`            | Show what would happen (no action) |
| `$ConfirmPreference` | Global threshold for confirmation  |

---

## 10. Common Misunderstandings

### Problem: CSV looks like garbage with `Get-Content`

```powershell
Get-Content "processes.csv"  # Shows raw text
```

**Fix:**

```powershell
Import-Csv "processes.csv"
```

This parses headers and creates structured output similar to the original objects.

### Recommended Pairings

| File Type  | Export With     | Import With     |
| ---------- | --------------- | --------------- |
| CSV        | `Export-Csv`    | `Import-Csv`    |
| CLIXML     | `Export-Clixml` | `Import-Clixml` |
| Plain Text | `Out-File`      | `Get-Content`   |

Use `-IncludeTypeInformation` if exporting richer CSVs:

```powershell
Get-Process | Export-Csv "processes.csv" -IncludeTypeInformation
```
