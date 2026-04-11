
param name string

param location string

param rules array

@description('Subnets to attach this NSG to')
param attachments array

resource nsg 'Microsoft.Network/networkSecurityGroups@2025-05-01' = {
  name: name
  location: location
  properties: {
    securityRules: [
      for rule in rules: rule
    ]
  }
}

resource subnetAssoc 'Microsoft.Network/virtualNetworks/subnets@2025-05-01' = [
  for a in attachments: {
    name: '${a.vnetName}/${a.subnetName}'
    properties: {
      addressPrefix: a.addressPrefix
      networkSecurityGroup: {
        id: nsg.id
      }
    }
  }
]