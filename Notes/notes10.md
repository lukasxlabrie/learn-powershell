## The Importance of Piping in PowerShell

Piping is a powerful technique in PowerShell that helps you avoid writing long, complex Bash-style scripts. When used effectively, it allows you to chain commands together in a clean, readable way.

### Basic Concept

- **Command A** produces output (an object or set of objects).
- **Command B** takes that output and does something with it.

If both commands work with the same type of object (or "noun"), they can usually be piped together seamlessly.

### How PowerShell Handles Piping: Parameter Binding

PowerShell uses a mechanism called **parameter binding** to connect the output of one command to the input of the next. This happens automatically using one of two strategies:

#### 1. Binding by Value

- PowerShell checks the **object type** of the output from Command A.
- It looks for parameters in Command B that accept that type.
- This is similar to running `Get-Member` on the output to inspect its type.
- **Limitation**: If multiple parameters in Command B accept the same type, PowerShell may bind the output to just one of them—possibly not the one you intended.

#### 2. Binding by Property Name

- PowerShell looks at the **property names** of the output object.
- If a property name matches a parameter name in Command B, it binds them together.
- This allows multiple parameters to be filled automatically, as long as the names match.
