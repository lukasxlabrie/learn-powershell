# PowerShell Modules (v6 and Newer)

## Module Overview
- Modules are the only supported extension type in PowerShell v6 and above.
- They are self-contained, making them easier to distribute and manage.
- Modules can include cmdlets, providers, functions, and other components.

## PowerShellGet
- Built-in module for discovering, installing, updating, and managing modules from online repositories.
- Functions similarly to Linux package managers like `rpm`, `yum`, and `apt-get`.

## PowerShell Gallery
- Official Microsoft-hosted repository: [https://powershellgallery.com](https://powershellgallery.com)
- Contains community-contributed code. Microsoft does not verify, endorse, or maintain submissions.
- Exercise caution before running third-party code.

## Module Discovery
- Modules can be searched directly on the PowerShell Gallery website or via PowerShellGet commands.
- Example: The `Az` module is used for Azure management.

---

# PowerShellGet Commands

| Command                | Description                                                                 |
|------------------------|-----------------------------------------------------------------------------|
| `Register-PSRepository`| Adds a repository URL. Default is `https://PowerShellGallery.com`. Can also register internal/private repositories. |
| `Find-Module`          | Searches for modules. Supports wildcards (`*`), tags, and filters.          |
| `Install-Module`       | Downloads and installs a module from a repository.                          |
| `Update-Module`        | Updates a locally installed module to the latest version.                   |

For full documentation, visit [PowerShellGallery.com](https://PowerShellGallery.com)

---

# Default Module Locations

PowerShell automatically searches for modules in the following locations:

- Installation directory (e.g., `C:\Program Files\PowerShell`)
- Shared system-wide folder (e.g., `C:\Program Files\WindowsPowerShell\Modules`)
- User-specific folder (e.g., `C:\Users\<User>\Documents\PowerShell\Modules`)

## Adding Custom Module Paths

To include a custom path in the module search list:

```powershell
$env:PSModulePath += [System.IO.Path]::PathSeparator + 'C:\Scripts\myModules'
```

This ensures PowerShell can locate your modules and enables features like:

- `Get-Help` integration
- Command auto-completion
- Module discovery during execution

---

# Best Practices

- Use product-specific prefixes (e.g., `Az`, `Sql`, `Dns`) to avoid naming conflicts and support multi-module environments.
- Modules can also add providers, extending PowerShell’s capabilities.
- Clear naming and structure help ensure compatibility and reduce confusion when multiple modules are in use.

---
