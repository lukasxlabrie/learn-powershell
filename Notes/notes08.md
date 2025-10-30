
# PowerShell Objects (Lesson 8)

## Object Overview

* In PowerShell, **everything is an object**, not just text.
* Objects are used to **present structured data**, allowing you to work with information in a predictable, organized way.
* Think of objects like a **table**:

  * **Object** → A single **row** in a table.
  * **Property** → A **column**, describing an attribute of the object.
  * **Method** → An **action** that can be performed on the object.
  * **Collection** → The entire **table** and its contents (all rows and columns).

Objects make PowerShell powerful by allowing you to manipulate and format data easily across commands and modules.

---

## Viewing Object Data

* PowerShell usually displays only **default properties** for readability.
* To see *all* details, use the `Get-Member` command (alias `gm`).
* You must **pipe** an object into `Get-Member`; if the command produces no output, `gm` will return nothing.

```powershell
Get-Service | Get-Member
# or
Get-Service | gm
```

> 🔹 **Note:**
> `Get-Help` is for **commands**.
> `Get-Member` is for **objects**.

---

## Properties

* Properties **describe** an object (e.g., `Name`, `Status`, `ID`).
* They are often **read-only**, providing information rather than something you can change directly.
* Example:

```powershell
Get-Process | Select-Object -Property Name, Id, CPU
```

This command lists specific object properties for each process.

---

## Methods

* Methods define **actions** that can be performed on an object.
* Example:

```powershell
$process = Get-Process -Name notepad
$process.Kill()
```

Here, `.Kill()` is a method that stops the running Notepad process.

---

## Sorting and Filtering Objects

PowerShell enables fine control over how object data is presented or manipulated.

| Command                   | Description                                                          |
| ------------------------- | -------------------------------------------------------------------- |
| `Sort-Object -Property`   | Sorts objects by one or more properties (alphabetically by default). |
| `Select-Object -Property` | Displays only the specified properties of each object.               |
| `Where-Object`            | Filters objects based on property values or conditions.              |

### Examples

```powershell
# Sort processes alphabetically by name
Get-Process | Sort-Object -Property Name

# Show only name and status for each service
Get-Service | Select-Object -Property Name, Status

# Display only running services
Get-Service | Where-Object Status -eq 'Running'
```

---

# Quick Reference

| Command         | Alias    | Purpose                                            |
| --------------- | -------- | -------------------------------------------------- |
| `Get-Member`    | `gm`     | Displays all properties and methods of an object.  |
| `Select-Object` | `select` | Chooses which properties to display.               |
| `Sort-Object`   | `sort`   | Sorts objects based on a property.                 |
| `Where-Object`  | `where`  | Filters objects by property values or expressions. |
| `Get-Help`      | `help`   | Shows documentation for PowerShell commands.       |

---

# Best Practices

* Remember that **PowerShell treats all output as objects**, not plain text.
* Always use `Get-Member` to explore unfamiliar command outputs.
* Combine `Select-Object`, `Sort-Object`, and `Where-Object` to create clean, readable results.
* Keep property and method names consistent when writing or reusing scripts.
