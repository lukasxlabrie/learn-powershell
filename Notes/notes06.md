
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



