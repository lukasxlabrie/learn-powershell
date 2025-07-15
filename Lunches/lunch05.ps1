# lists all environment variables
Get-ChildItem env:*

# sets an environment variable 
# Note: This will only set the variable for the current session
Set-Item -Path Env:/A -Value 1

# lists all environment variables starting with 'A'
Get-ChildItem Env:/A*

#LABS
# 1. Create a new directory called Labs.
New-Item -Path "labs" ItemType "Direcotory"

# 2. Create a zero-length file named /Labs/Test.txt (use New-Item).
#  zero-length file, also known as a zero-byte file, is a file with no data
New-Item -Path "/Labs/Test.txt" -ItemType "File"


# 3. Is it possible to use Set-Item to change the contents of /Labs/Test.txt to -TESTING? Or do you get an error? If you get an error, why?
Set-Item -Path '/Labs/Test.txt' -Value '-TESTING'
    # Set-Item is used to replace an item itself, not its content. In the FileSystem provider, that means replacing the file, not editing what's inside.
    # use Set-Content or Add-Content 

# 4. Using the Environment provider, display the value of the system environment variable PATH.
Get-ChildItem Env:PATH


# 5. Use help to determine what the differences are between the -Filter, -Include, and -Exclude parameters of Get-ChildItem
# -Filter
#Specifies a filter to qualify the Path parameter. 
#The FileSystem provider is the only installed PowerShell provider that supports filters. 
#Filters are more efficient than other parameters. 
#The provider applies filter when the cmdlet gets the objects 
#rather than having PowerShell filter the objects after they're retrieved.
#The filter string is passed to the .NET API to enumerate files. The API only supports * and ? wildcards

#-Include
#Specifies an array of one or more string patterns to be matched as the cmdlet gets child items. 
#Any matching item is included in the output. 
#Enter a path element or pattern, such as "*.txt". Wildcard characters are permitted. 
#The Include parameter is effective only when the command includes the contents of an item, such as 
#C:\Windows\*, where the wildcard character specifies the contents of the C:\Windows directory.
#The Include and Exclude parameters can be used together. 
#However, the exclusions are applied after the inclusions, which can affect the final output.


#-Exclude
#Specifies an array of one or more string patterns to be matched as the cmdlet gets child items. 
#Any matching item is excluded from the output. Enter a path element or pattern, such as *.txt or A*. Wildcard characters are accepted.
#A trailing asterisk (*) in the Path parameter is optional. 
#For example, -Path C:\Test\Logs or -Path C:\Test\Logs\*. 
#If a trailing asterisk (*) is included, the command recurses into the Path parameter's subdirectories. 
#Without the asterisk (*), the contents of the Path parameter are displayed.

# -Filter, -Include, and -Exclude parameters are used to filter the results of Get-ChildItem. However, they work in different ways:
# -Filter is used to specify a filter that is applied at the provider level, which can be more efficient.
# -Include is used to specify patterns that should be included in the results, and it works after the items are retrieved.
# -Exclude is used to specify patterns that should be excluded from the results, and it also works after the items are retrieved.
# The main difference is that -Filter is applied before the items are retrieved, while -Include and -Exclude are applied after the items are retrieved.