# Upload README.md, LICENSE, and .gitignore to alanjun0411/dsh-community-desktop.
# Requires a GitHub PAT with repo scope in GITHUB_TOKEN (or GH_TOKEN).
# git.exe is not used: this host can reach api.github.com via curl, but git://github.com:443 often fails.

$ErrorActionPreference = 'Stop'
$owner = 'alanjun0411'
$repo = 'dsh-community-desktop'
$branch = 'main'
$token = $env:GITHUB_TOKEN
if ([string]::IsNullOrWhiteSpace($token)) { $token = $env:GH_TOKEN }
if ([string]::IsNullOrWhiteSpace($token)) {
  throw 'Set GITHUB_TOKEN or GH_TOKEN to a GitHub personal access token with repo scope.'
}

$root = $PSScriptRoot
$headers = @(
  '-H', 'Accept: application/vnd.github+json',
  '-H', 'X-GitHub-Api-Version: 2022-11-28',
  '-H', "Authorization: Bearer $token",
  '-H', 'User-Agent: dsh-community-desktop-publish'
)

function Get-RemoteSha([string]$path) {
  $url = "https://api.github.com/repos/$owner/$repo/contents/$path`?ref=$branch"
  $tmp = Join-Path $env:TEMP ("dsh-gh-" + [Guid]::NewGuid().ToString('n') + '.json')
  $code = 0
  & curl.exe -sS -o $tmp -w '%{http_code}' @headers $url | ForEach-Object { $code = [int]$_ }
  if ($code -eq 404) {
    Remove-Item $tmp -ErrorAction SilentlyContinue
    return $null
  }
  if ($code -ne 200) {
    $body = Get-Content -Raw $tmp
    Remove-Item $tmp -ErrorAction SilentlyContinue
    throw "GET $path failed: HTTP $code $body"
  }
  $json = Get-Content -Raw $tmp | ConvertFrom-Json
  Remove-Item $tmp
  return [string]$json.sha
}

function Publish-File([string]$path, [string]$message) {
  $local = Join-Path $root $path
  $bytes = [IO.File]::ReadAllBytes($local)
  $content = [Convert]::ToBase64String($bytes)
  $sha = Get-RemoteSha $path
  $body = @{
    message = $message
    content = $content
    branch  = $branch
  }
  if ($sha) { $body.sha = $sha }
  $bodyPath = Join-Path $env:TEMP ("dsh-gh-body-" + [Guid]::NewGuid().ToString('n') + '.json')
  [IO.File]::WriteAllText($bodyPath, ($body | ConvertTo-Json -Compress), (New-Object System.Text.UTF8Encoding $false))
  $out = Join-Path $env:TEMP ("dsh-gh-out-" + [Guid]::NewGuid().ToString('n') + '.json')
  $code = 0
  & curl.exe -sS -X PUT -d "@$bodyPath" -o $out -w '%{http_code}' @headers `
    "https://api.github.com/repos/$owner/$repo/contents/$path" | ForEach-Object { $code = [int]$_ }
  Remove-Item $bodyPath
  if ($code -ne 200 -and $code -ne 201) {
    $err = Get-Content -Raw $out
    Remove-Item $out -ErrorAction SilentlyContinue
    throw "PUT $path failed: HTTP $code $err"
  }
  Remove-Item $out
  Write-Host "uploaded $path"
}

Publish-File 'README.md' 'Add community Windows desktop usage guide'
Publish-File 'LICENSE' 'Keep MIT with DeepSeek and maintainer copyright'
Publish-File '.gitignore' 'Ignore installer artifacts in the docs repository'
Write-Host "Docs published to https://github.com/$owner/$repo"
