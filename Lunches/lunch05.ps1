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



# 5. Use help to determine what the differences are between the -Filter, -Include, and -Exclude parameters of Get-ChildItem