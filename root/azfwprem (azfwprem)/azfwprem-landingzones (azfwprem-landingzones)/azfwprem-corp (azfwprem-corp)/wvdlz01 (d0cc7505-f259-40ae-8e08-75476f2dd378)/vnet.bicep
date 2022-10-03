param vnetName string
param vnetAddrPrefix array
param subnetName string
param subnetAddrPrefix string
param location string
param nsgId string

resource virtualNetwork 'Microsoft.Network/virtualNetworks@2019-11-01' = {
  name: vnetName
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: vnetAddrPrefix
    }
    subnets: [
      {
        name: subnetName
        properties: {
          addressPrefix: subnetAddrPrefix
          networkSecurityGroup: {
            id: nsgId
          }
        }
      }
    ]
  }
}