##Update the template variab/le as well as the stack name before excuting the script.
## Written Saad Iqbal Date:9/22/19
## Purpose Demo
 
Set-ExecutionPolicy bypass
Import-Module AWSPowerShell
Initialize-AWSDefaultConfiguration
Set-AWSCredential -ProfileName SaadProfile
$template = Get-Content -Path 'C:\Saad\AWS\Cloud Formation Templates\LampStack-Yaml-ALV2-AdminDesktop.yml' -raw
New-CFNStack -StackName LampStack -TemplateBody $template
