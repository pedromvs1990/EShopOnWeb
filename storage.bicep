
param storageAccountName string = 'pmvs${uniqueString(resourceGroup().id)}'
param location string= resourceGroup().location


resource storageAccount 'Microsoft.Storage/storageAccounts@2022-05-01' = {
  name: storageAccountName
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'Storage'
}


output storageURI string = storageAccount.properties.primaryEndpoints.blob
