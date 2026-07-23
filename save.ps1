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
} | ConvertTo-Json

try {
  $response = Invoke-RestMethod -Uri $config.webhook_url -Method Post -Body $body -ContentType "application/json"
  if ($response.success) {
    Write-Host "✓ Saved to sheet" -ForegroundColor Green
  } else {
    Write-Host "✗ Failed: $($response.error)" -ForegroundColor Red
  }
} catch {
  Write-Host "✗ Error: $_" -ForegroundColor Red
}
