#Cloudera Azure Powershell Deployment Script

$rgName = "ClouderaRG"
$rgLocation = "northeurope"
$parameters_file_path = "C:\cloudera-on-azure-custom\azuredeploy.parameters.json"
$template_file_path = "C:\cloudera-on-azure-custom\azuredeploy.json"

New-AzureRmResourceGroup -Name $rgName -Location $rgLocation

New-AzureRmResourceGroupDeployment -ResourceGroupName $rgName -TemplateParameterFile $parameters_file_path -TemplateFile $template_file_path -verbose