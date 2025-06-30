## 🛡️ PowerShell Execution Policy & Script Basics

### 🔐 Security Model
- PowerShell **does not** provide additional security layers.
- It uses the **current user’s privileges** to run commands.
- Designed to **prevent unintentional execution** of scripts—not to block skilled users.

### ⚙️ Execution Policy (EP)
- **Default varies** by OS/device. Common default: `RemoteSigned`.
- EP determines how scripts are validated before running.

#### 🔄 How to Change It
- Run `Set-ExecutionPolicy` (updates registry key under `HKLM` or `HKCU`).
- Apply via **Group Policy (GPO)**.
- Execute a custom `.exe` to override GPO + registry settings.

### 📜 Policy Types

| Policy        | Description                                                                 |
|---------------|-----------------------------------------------------------------------------|
| **Restricted**   | Default. No script execution except Microsoft-signed config scripts.         |
| **AllSigned**    | Only scripts signed with trusted CA certs will run.                          |
| **RemoteSigned** | Local scripts run freely. Remote scripts must be signed (Internet, UNC path).|
| **Unrestricted** | All scripts run; user sees a security warning for remote scripts.            |
| **Bypass**       | No restrictions. Used by applications embedding PowerShell. Trust is external.|

> 📌 Execution Policy is a **user safeguard**, not a security boundary.

---

## 🧠 How PowerShell Is Used
_"Write commands. Test. Refine. Paste into a text file. Voilà—script!"_

---

### 🧬 Syntax Example
```powershell
Get-Command -Verb Get -Module PSReadLine,PowerShellGet -Syntax
```

- `Get-Command`: Cmdlet in Verb-Noun format.
- `-Verb Get`: Simple parameter (no quotes).
- `-Module`: Takes multiple values (comma-separated).
- `-Syntax`: Switch parameter (no value).
- Mandatory spaces between cmdlet and parameters.
- Parameters start with `-` and are **not case sensitive**.

---

## 🧩 PowerShell Command Components

| Term         | Description                                                                 |
|--------------|-----------------------------------------------------------------------------|
| **Cmdlet**       | Native PowerShell command (e.g., `Get-Command`). .NET-based.                |
| **Function**     | Scripted command written in PowerShell itself.                              |
| **Application**  | External executable like `ping`, `ipconfig`.                                |
| **Command**      | Generic term covering all of the above.                                     |

### 🔑 Cmdlet Notes
- Unique to PowerShell. Search for "cmdlet" to filter relevant info.
- Pronounced: _command-let_

---

### 🚀 Shortcuts (Power User Tricks)
- **Aliases**: Nicknames for commands (e.g., `gcm` for `Get-Command`).
- **Truncated parameters**: `-Ver` works for `-Verb` if unambiguous.
- **Positional parameters**: Skip names entirely if order is correct.
- **Parameter aliases**: Use known alternatives.

---

