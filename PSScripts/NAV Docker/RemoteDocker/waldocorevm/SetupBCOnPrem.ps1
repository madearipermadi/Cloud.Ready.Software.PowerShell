. (Join-Path $PSScriptRoot '.\_Settings.ps1')

$Containername = 'bconprem'
$ContainerAdditionalParameters += "--ip 172.21.31.14"

$ContainerDockerImage = 'mcr.microsoft.com/businesscentral/onprem:13.1.25940.0-be-ltsc2019'
$ContainerAlwaysPull = $true
$enableSymbolLoading = $false
#$SecretSettings.containerLicenseFile = 'c:\programdata\navcontainerhelper\NAV2018License.flf'


New-RDHNAVContainer `
    -DockerHost $DockerHost `
    -DockerHostCredentials $DockerHostCredentials `
    -DockerHostUseSSL:$DockerHostUseSSL `
    -DockerHostSessionOption $DockerHostSessionOption `
    -ContainerDockerImage $ContainerDockerImage `
    -ContainerRegistryUserName $SecretSettings.containerRegistryUserName `
    -ContainerRegistryPwd $SecretSettings.containerRegistryPassword `
    -ContainerName $Containername `
    -ContainerLicenseFile $SecretSettings.containerLicenseFile `
    -ContainerCredential $ContainerCredential `
    -ContainerAlwaysPull:$ContainerAlwaysPull `
    -ContainerAdditionalParameters $ContainerAdditionalParameters `
    -doNotExportObjectsToText `
    -enableSymbolLoading:$enableSymbolLoading 
    