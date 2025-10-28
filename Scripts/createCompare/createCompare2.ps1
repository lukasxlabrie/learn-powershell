# gets all firewall rules, filters them for better output
Get-NetFirewallRule | Select-Object Group, Name, DisplayName, Enabled, Direction, Action