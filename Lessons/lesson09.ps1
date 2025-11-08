   #This exercise will be about secrets management. DevOps engineers should be very
   #familiar with this concept. The idea is simple: We have a bunch of sensitive information
   #(passwords, connection strings, etc.) that we need to use in our commands, but
 
   #e need to keep those secrets in a secure location. 
   #We do notto share those ecrets with other members on our team.
   #he PowerShell team has recently been working on a module called Secrets Management
   #module for interacting with any secret store that
   #supports it. Some will be local secret stores like the macOS Keychain, and others will
   #be cloud services like Azure Key Vault and HashiCorp Vault. Your goal is to grab this
   #module, store a secret in your secret store of choice, and then retrieve it. If you use a
   #cloud-based secret store, make sure to clean up any resources you create to avoid
   #unnecessary charges.

   # Register a local vault (only needed once)
   Register-SecretVault -Name MyLocalVault -ModuleName Microsoft.PowerShell.SecretStore -DefaultVault

   # to create a new secret vault
   Set-Secret -name mySecret -secret "P@ssw0rd!" -vault MyLocalVault
    
   # to retrieve the secret from the vault
   Get-Secret -name mySecret -vault MyLocalVault