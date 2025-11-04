# Lesson 9: How to Use PowerShell and Teach Yourself

## YAML Basics
- **YAML** = "YAML Ain't Markup Language"
- Used for structured config files
- PowerShell can parse YAML using `ConvertFrom-Yaml` from the `powershell-yaml` module

---

## PowerShell Scripting Approach

### 1. Define and Break Down the Task
- Think like a flowchart
- Break into small, logical steps
- Clarify inputs, outputs, and expected behavior

### 2. Find the Right Commands
- Use `Get-Help` with keywords
- If nothing found:
  - Try `Get-Command`
  - Use `Get-Member` to inspect objects
  - Browse [PowerShell Gallery](https://www.powershellgallery.com)

### 3. Learn How to Use the Command
- Run: `Get-Help <Command> -Full`
- If help is missing:
  - Run the command with test input
  - Use `Get-Member` to explore output
  - Experiment interactively

---

## Module Installation & Troubleshooting

### If install/connectivity issues:
```powershell
Install-PackageProvider -Name NuGet -Force -Scope CurrentUser
Install-Module PowerShellGet -Force -AllowClobber -Scope CurrentUser
Invoke-WebRequest https://www.powershellgallery.com/api/v2 -UseBasicParsing
```

### Notes:
- Use `-Force` and `-Scope CurrentUser` to avoid permission issues
- Check PowerShell Gallery status with `Invoke-WebRequest`
- Modules are **open source** and **not Microsoft-backed**
- Always **review code** before installing
```