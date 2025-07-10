Here’s the updated, **speed-readable cheat sheet** with your new content on **PSProviders** added and integrated into the existing format:
## 🔹 Filesystem Organization (PowerShell Context)

* **Item**: Generic object in PowerShell (file, folder, registry key, etc.).
* **Folder**: Container for files and other folders.
* **File**: Endpoint object; not a container.
* **ChildItem**: Contents inside a container item (e.g., files in a folder).
* **ItemProperty**: Metadata/attributes of an item (e.g., length, read-only, timestamp).

## 🔹 Cmdlet Behavior

* **Generic cmdlets**: Work across data stores (filesystem, registry, ENV, etc.).
* **FileSystem Provider**: Doesn’t support `-UseTransaction`.
* **Environment Provider (ENV:)**: No item properties; used for environment variables.

## 🔹 PSProvider (PowerShell Provider)

* **Definition**: An adapter that exposes data (e.g., filesystem, registry, AD) as a navigable drive.
* **Examples**: Filesystem, Registry, Active Directory, ENV
* **Looks like a drive** in PowerShell, but is mapped to non-filesystem storage.

### 🔸 Common Capabilities:

* **ShouldProcess**: Enables `-WhatIf` and `-Confirm` for safe testing.
* **Filter**: Supports `-Filter` to narrow cmdlet operations.
* **Credentials**: Allows using alternate credentials (e.g., remote access).


## 🔹 PSDrives

* **PSDrive**: Virtual drive mapped to a provider.

  * Examples: `C:`, `ENV:`, `HKLM:`, `AD:`
* **Linux/macOS**: Root = `/`; PowerShell also allows `\`


## 🔹 Navigating the Filesystem

* **Set-Location (`cd`)**: Changes current directory/path.

  * Linux/macOS: `cd /usr/bin`
  * Windows: `cd C:\Users\`

* **Paths**:

  * `*` = Wildcard for 0+ characters
  * `?` = Wildcard for 1 character


## 🔹 Get-ChildItem

* **Purpose**: Lists contents (files/folders) of a path.
* **Parameter: `-Path <String[]>`**

  * Wildcards: ✅
  * Pipeline input: ✅
  * Default: Current directory (`.`)

## 🔹 Verb-Noun Pairs

* **Common Verbs**:
  `Get`, `Set`, `New`, `Copy`, `Move`, `Rename`, `Remove`, `Clear`

* **Item**: Any object (file, folder, registry key).

* **ItemProperty**: Item's characteristics (e.g., timestamps, attributes).


