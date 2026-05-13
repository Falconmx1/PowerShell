# PowerMaxShell - Punto de entrada
Write-Host "⚡ Cargando PowerMaxShell..." -ForegroundColor Cyan

# Obtener ruta del script
$scriptRoot = Split-Path -Parent $MyInvocation.MyCommand.Path

# Cargar temas
. "$scriptRoot\theme\colors.ps1"
. "$scriptRoot\theme\banner.ps1"
. "$scriptRoot\theme\prompt.ps1"

# Cargar alias
. "$scriptRoot\aliases\git.ps1"
. "$scriptRoot\aliases\nav.ps1"
. "$scriptRoot\aliases\utils.ps1"

# Cargar plugins
. "$scriptRoot\plugins\history.ps1"
. "$scriptRoot\plugins\autosuggest.ps1"

# Mostrar banner
Show-PowerMaxBanner

Write-Host "✅ PowerMaxShell listo." -ForegroundColor Green
