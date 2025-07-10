# lists all environment variables
Get-ChildItem env:*

# sets an environment variable 
# Note: This will only set the variable for the current session
Set-Item -Path Env:/A -Value 1

# lists all environment variables starting with 'A'
Get-ChildItem Env:/A*