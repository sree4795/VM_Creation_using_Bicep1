# This IaC script provisions a VM within Azure
#
[CmdletBinding()]
param(
    [Parameter(Mandatory = $True)]
    [string]
    $servicePrincipal,
    [Parameter(Mandatory = $True)]
    [string]
    $servicePrincipalSecret,
    [Parameter(Mandatory = $True)]
    [string]
    $servicePrincipalTenantId,
    [Parameter(Mandatory = $True)]
    [string]
    $azureSubscriptionName,
    [Parameter(Mandatory = $True)]
    [string]
    $resourceGroupName,
    [Parameter(Mandatory = $True)]
    [string]
    $resourceGroupNameRegion,
    [Parameter(Mandatory = $True)]
    [string]
    $serverName,
    [Parameter(Mandatory = $True)]
    [string]
    $adminLogin,
    [Parameter(Mandatory = $True)]
    [String]
    $adminPassword
)
#region Login
# This logs into Azure with a Service Principal Account
#
Write-Output "Logging in to Azure with a service principal..."
az login `
    --service-principal `
    --username $servicePrincipal `
    --password $servicePrincipalSecret `
    --tenant $servicePrincipalTenantId
Write-Output "Done"
Write-Output ""
