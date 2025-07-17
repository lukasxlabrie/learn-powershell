
## PowerShell Pipelines and Data Export

PowerShell connects commands using a **pipeline**, which allows one command to pass its output to another. This is done using the **pipe symbol `|`**, letting the second command process the output of the first.

### 🔹 Pipelining Example

```powershell
Get-Process | Sort-Object CPU -Descending | Select-Object -First 5
```

This example:

* Gets all running processes.
* Sorts them by CPU usage (highest first).
* Selects the top 5.

---

### 🔹 Exporting Data in PowerShell

PowerShell supports exporting data to **multiple useful formats**, including:

* **TXT**: Plain text
* **CSV**: Comma-separated values (Excel-friendly)
* **JSON**: JavaScript Object Notation (widely used in APIs)
* **XML**: Extensible Markup Language (used in config and data files)

These formats are helpful when exporting data from sources like **Azure Active Directory** or **cloud storage**.

#### Examples:

```powershell
Get-Process | Export-Csv -Path "Processes.csv" -NoTypeInformation
Get-Command | Out-File -FilePath "Commands.txt"
```

---

### 🔹 Practice with Built-In Commands

To understand piping, try it out using these common commands:

| Cmdlet                  | Alias |
| ----------------------- | ----- |
| `Get-Process`           | `gps` |
| `Get-Command`           | `gcm` |
| `Get-History -Count 10` | `h`   |

You can then pipe these into formatters or exporters:

```powershell
gps | Format-Table -AutoSize
gcm | Export-Csv -Path "commands.csv" -NoTypeInformation
h | Out-File -FilePath "history.txt"
---

## PowerShell: Import / Export Reference

### CSV (Comma-Separated Values)

**Best for:**

* Viewing and editing flat data in Excel or text editors
* Simple tabular data

**Export:**

```powershell
Get-Process | Export-Csv -Path "processes.csv" -NoTypeInformation
```

**Import:**

```powershell
$procs = Import-Csv -Path "processes.csv"
```

---

### JSON (JavaScript Object Notation)

**Best for:**

* Working with APIs and web services
* Handling nested or complex data structures (e.g., process threads)

**Export:**

```powershell
Get-Process | ConvertTo-Json | Out-File "processes.json"
```

**Import:**

```powershell
$json = Get-Content "processes.json" | ConvertFrom-Json
```

---

### XML (CLIXML - PowerShell native format)

**Best for:**

* Preserving full object structure and type information
* PowerShell-to-PowerShell data transfer

**Export:**

```powershell
Get-Process | Export-Clixml -Path "processes.xml"
```

**Import:**

```powershell
$procs = Import-Clixml -Path "processes.xml"
```

---

### Out-File

**Best for:**

* Writing plain text output to a file
* Logging or saving formatted command output as displayed in the console

**Example:**

```powershell
Get-Command | Out-File -FilePath "commands.txt"
```

---

### Summary Table

| Format   | Use Case                         | Handles Nested Data | Editable in Excel | Preserves Object Types |
| -------- | -------------------------------- | ------------------- | ----------------- | ---------------------- |
| CSV      | Flat data, Excel-friendly        | No                  | Yes               | No                     |
| JSON     | Web APIs, structured data        | Yes                 | No                | No                     |
| CLIXML   | PowerShell-native object storage | Yes                 | No                | Yes                    |
| Out-File | Plain text output and logging    | No                  | No                | No                     |

---

## Compare-Object in PowerShell

### Purpose

`Compare-Object` compares two sets of data (collections of objects) and shows their differences.

### Syntax

```powershell
Compare-Object -ReferenceObject <data1> -DifferenceObject <data2> [-Property <propertyName>]
```

---

### Parameters

| Parameter           | Description                                                                              |
| ------------------- | ---------------------------------------------------------------------------------------- |
| `-ReferenceObject`  | The baseline/original data                                                               |
| `-DifferenceObject` | The data to compare against the reference                                                |
| `-Property`         | Specifies one or more object properties to compare (instead of comparing entire objects) |

---

### Example with `-Property`

```powershell
Compare-Object -ReferenceObject (Import-Clixml "before.xml") `
               -DifferenceObject (Get-Process) `
               -Property Name
```

**Explanation:**

* `Import-Clixml` loads a saved list of processes (before.xml)
* `Get-Process` fetches the current list of running processes
* `-Property Name` tells PowerShell to compare only the `Name` property of each process

---

### Sample Output:

```
Name      SideIndicator
----      -------------
notepad   <=
chrome    =>
```

* `<=` appears only in the reference data (saved XML)
* `=>` appears only in the current system data (live process list)

---

### Why Parentheses Are Required

Just like in math, **PowerShell uses parentheses to control execution order**.

Without parentheses:

```powershell
Compare-Object -ReferenceObject Import-Clixml "before.xml" ...
```

PowerShell would try to pass the literal command instead of its output — this results in a syntax or type error.

With parentheses:

```powershell
-ReferenceObject (Import-Clixml "before.xml")
```

The `Import-Clixml` command runs first, and the resulting object is passed correctly as input.

---

### Summary Table

| Concept             | Description                                                                                      |
| ------------------- | ------------------------------------------------------------------------------------------------ |
| `Compare-Object`    | Compares two collections of objects                                                              |
| `-ReferenceObject`  | The original or baseline data set                                                                |
| `-DifferenceObject` | The current or comparison data set                                                               |
| `-Property <name>`  | Compares only the specified property instead of the full object                                  |
| Parentheses `()`    | Ensure commands like `Get-Process` and `Import-Clixml` execute before passing data to the cmdlet |

---





