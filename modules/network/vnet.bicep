@description('Virtual network name')
param name string

@description('Deployment location, e.g. australiaeast')
param location string

@description('Address prefixes for the VNet')
param addressPrefixes array

@description('Subnets to create')
param subnets array 


resource vnet 'Microsoft.Network/virtualNetworks@2025-05-01' = {
  name: name
  location: location
  properties: {
    addressSpace: {addressPrefixes: addressPrefixes}
    subnets:[
      for subnet in subnets : {
        name: subnet.name
        properties: {
          addressPrefix:subnet.prefix
        }
      }
    ]
  }
}

output subnetIds array = [
  for s in subnets:{
    name: s.name
    id: resourceId('Microsoft.Network/virtualNetworks/subnets', name, s.name)
  }
]

