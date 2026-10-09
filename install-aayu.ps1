$ErrorActionPreference = 'Stop'
$ProgressPreference = 'SilentlyContinue'

$version = 'v1.2.11'
$installDir = Join-Path $env:USERPROFILE '.aayu\bin'
$exePath = Join-Path $installDir 'aayu.exe'
$downloadUrl = "https://github.com/Minato95-ayu/INTENT-TO-SILICON/releases/download/$version/aayu.exe"

New-Item -ItemType Directory -Force -Path $installDir | Out-Null
if (Test-Path $exePath) {
    Write-Host "AAYU compiler already exists at $exePath"
} else {
    Write-Host "Downloading AAYU $version..."
    Invoke-WebRequest -Uri $downloadUrl -OutFile $exePath
}

$userPath = [Environment]::GetEnvironmentVariable('Path', 'User')
$pathEntries = @($userPath -split ';' | Where-Object { $_ })
if ($pathEntries -notcontains $installDir) {
    [Environment]::SetEnvironmentVariable('Path', (($pathEntries + $installDir) -join ';'), 'User')
}

Write-Host "AAYU installed at $exePath"
Write-Host 'Open a new terminal, then run: aayu --help'
