# install.ps1 - Instalación automática de PowerMaxShell
Write-Host "🔥 Instalando PowerMaxShell..." -ForegroundColor Cyan

$profile_path = $PROFILE.CurrentUserCurrentHost
$repo_url = "https://raw.githubusercontent.com/Falconmx1/PowerShell/main"
$temp_path = "$env:TEMP\PowerMaxShell"

# Crear carpetas si no existen
$folders = @("theme", "aliases", "plugins")
foreach ($folder in $folders) {
    $folderPath = "$temp_path\$folder"
    if (-not (Test-Path $folderPath)) { New-Item -ItemType Directory -Path $folderPath -Force }
}

# Función para descargar archivos
function Download-File {
    param($file, $dest)
    $url = "$repo_url/$file"
    try {
        Invoke-WebRequest -Uri $url -OutFile $dest -ErrorAction Stop
        Write-Host "   ✔ $file" -ForegroundColor Green
    } catch {
        Write-Host "   ✘ $file - Error" -ForegroundColor Red
    }
}

Write-Host "`n📦 Descargando archivos..." -ForegroundColor Yellow
Download-File "powermaxshell.ps1" "$temp_path\powermaxshell.ps1"
Download-File "theme\banner.ps1" "$temp_path\theme\banner.ps1"
Download-File "theme\colors.ps1" "$temp_path\theme\colors.ps1"
Download-File "theme\prompt.ps1" "$temp_path\theme\prompt.ps1"
Download-File "aliases\git.ps1" "$temp_path\aliases\git.ps1"
Download-File "aliases\nav.ps1" "$temp_path\aliases\nav.ps1"
Download-File "aliases\utils.ps1" "$temp_path\aliases\utils.ps1"
Download-File "plugins\history.ps1" "$temp_path\plugins\history.ps1"
Download-File "plugins\autosuggest.ps1" "$temp_path\plugins\autosuggest.ps1"

# Agregar al perfil
$line_to_add = "`n# PowerMaxShell`n. `"$temp_path\powermaxshell.ps1`""
if (-not (Select-String -Path $profile_path -Pattern "PowerMaxShell" -Quiet -ErrorAction SilentlyContinue)) {
    Add-Content -Path $profile_path -Value $line_to_add
    Write-Host "`n✅ Agregado a $profile_path" -ForegroundColor Green
} else {
    Write-Host "`n⚠️ PowerMaxShell ya estaba en el perfil" -ForegroundColor Yellow
}

Write-Host "`n🔄 Reinicia PowerShell o ejecuta: . `"$profile_path`"" -ForegroundColor Cyan
