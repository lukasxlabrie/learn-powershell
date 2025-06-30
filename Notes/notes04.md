Lunch 04

Powershell does not add any additional security layers, it is intended to allow the current user to use thier current permissions to operate
It is designed to prevent the unintnetional running of scripts though 

Execution polify varies by device/OS, default is usually RemotedSigned

Can change by:
running Set-ExecutionPolicy, changes setting in HKEY
GPO
Manually running an .exe to overwrite the GPO and curretn setting