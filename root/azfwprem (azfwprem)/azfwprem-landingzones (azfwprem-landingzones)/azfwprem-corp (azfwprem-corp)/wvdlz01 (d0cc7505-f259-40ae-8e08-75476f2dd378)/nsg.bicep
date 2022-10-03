param name string
param location string

resource networkSecurityGroup 'Microsoft.Network/networkSecurityGroups@2019-11-01' = {
  name: name
  location: location
  properties: {
    securityRules: [
    ]
  }
}

output nsgId string = networkSecurityGroup.id