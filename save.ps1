param(
  [Parameter(Mandatory = $true)]
  [string]$topic,
  [string]$category = "",
  [string]$format = "",
  [string]$headline = "",
  [string]$voiceover = "",
  [string]$visual = "",
  [string]$action = "save"
)

$config = Get-Content "$PSScriptRoot\config.json" | ConvertFrom-Json
$body = @{
  action = $action
  date = (Get-Date -Format "yyyy-MM-dd")
  category = $category
  topic = $topic
  format = $format
  headline = $headline
  voiceover = $voiceover
  visual = $visual
}

$payload = $body | ConvertTo-Json

try {
  $response = Invoke-RestMethod -Uri $config.webhook_url -Method Post -Body $payload -ContentType "application/json"
  if ($response.success) {
    Write-Host "SAVE OK | action=$action topic=$topic category=$category format=$format headline=$headline" -ForegroundColor Green
  } else {
    Write-Host "SAVE FAILED | error=$($response.error) action=$action topic=$topic" -ForegroundColor Red
  }
} catch {
  Write-Host "SAVE ERROR | exception=$_ action=$action topic=$topic" -ForegroundColor Red
}
