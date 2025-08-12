PowerShell Modules (v6 and newer)

Modules: Only supported extension type in v6+, self-contained, easier to distribute.

PowerShellGet: Built-in module for finding, downloading, installing, and updating modules from online repositories.

Works like Linux package managers: rpm, yum, apt-get.

PowerShell Gallery: Official Microsoft-hosted online repository at https://powershellgallery.com

Contains community-contributed code (Microsoft does not produce, verify, or endorse).

Use caution before running code from others.

Azure module: Az

Search modules directly on the site or via PowerShellGet commands.

**PowerShellGet Commands (Module Management)**

* **Register-PSRepository**: Add the URL of a repository.

  * `http://PowerShellGallery.com` is set up by default.
  * Can register private/internal galleries for organization use.

* **Find-Module**: Search for modules in repositories.

  * Supports wildcards `*`, tags, and other filters to narrow results.

* **Install-Module**: Download and install a module from a repository.

* **Update-Module**: Check if a local module is outdated and update to the latest version if needed.

* PowerShellGet has additional commands — see [PowerShellGallery.com](http://PowerShellGallery.com) for documentation.