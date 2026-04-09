
param name string

param location string

param rules array

resource nsg 'Microsoft.Network/networkSecurityGroups@2025-05-01' = {
  name: name
  location: location
  properties: {
    securityRules: [
      for rule in rules: rule
    ]
  }
}