# see current execution policy
Get-ExecutionPolicy

# change execution policy
Set-ExecutionPolicy

# find parameter aliases example
PS /Users/james> (get-command get-process | select -Expandparameters).erroraction.aliases

