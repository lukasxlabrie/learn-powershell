PowerShell Shortcuts and Tips

Tab completion: Type part of a command like Get-P and press Tab twice to cycle through options
Similar to IntelliSense in Visual Studio, but simpler

Use # to write comments
# This is a comment

$PSVersionTable shows the version of PowerShell you're using

PowerShell Symbol Reference

'  single quote  
    - Used for literal strings. Variables and escape sequences are not evaluated.  
    - Example: 'This is $literal'

`  backtick  
    - PowerShell’s escape character. Used to insert special characters or escape $, ", etc.  
    - Example: "`$PSVersionTable", "Line1`nLine2"

\  backslash  
    - Used in file paths and regular expressions. Not an escape character in PowerShell.  
    - Example: "C:\Users\lukas", "\d+"

()  parentheses  
    - Used for grouping expressions, function calls, and precedence.  
    - Example: (2 + 3) * 5, Write-Host("Hello")

{}  curly brackets  
    - Used for script blocks, loops, and conditional logic.  
    - Example: foreach ($i in 1..5) { Write-Host $i }

[]  square brackets  
    - Used for type declarations, array indexing, and attributes.  
    - Example: [int]$x = 5, $array[0]

<>  angle brackets  
    - Not actual syntax — used as placeholders in documentation or examples.  
    - Example: <YourFilePath>

