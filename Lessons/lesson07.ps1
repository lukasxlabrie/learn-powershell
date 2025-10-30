# Install Az moduule if not already installed
if (-not (Get-Module -ListAvailable -Name Az)) {
    Install-Module -Name Az -AllowClobber -Scope CurrentUser -Force
}

# Add a custom module path to the PSModulePath environment variable
$env:PSModulePath += [System.IO.Path]::PathSeparator + 'C:\Scripts/myModules'

# Compress a folder into a zip file
Compress-Archive -Path "C:\MyFolder" -DestinationPath "C:\MyFolder.zip"