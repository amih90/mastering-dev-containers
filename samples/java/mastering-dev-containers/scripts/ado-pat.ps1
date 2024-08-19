az login

$azureDevopsResourceId = "499b84ac-1321-427f-aa17-267ca6975798"
$token = az account get-access-token --resource $azureDevopsResourceId | ConvertFrom-Json
$authValue = [Convert]::ToBase64String([System.Text.Encoding]::UTF8.GetBytes(":" + $token.accessToken))

$headers = @{
    Authorization = "Basic $authValue";
    'X-VSS-ForceMsaPassThrough' = $true
}

$organization = "your-org"
$pipelineRunUrl = "https://vssps.dev.azure.com/msazure/_apis/tokens/pats?api-version=7.1-preview.1"

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-RestMethod -Uri $pipelineRunUrl -Method GET -Headers $headers -ContentType 'application/json' -Verbose
