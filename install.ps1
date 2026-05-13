# install.ps1
Write-Host "🔥 Instalando PowerMaxShell en tu perfil de PowerShell..."
$profile_path = $PROFILE.CurrentUserCurrentHost
$repo_path = "$env:USERPROFILE\PowerMaxShell"

# Clonar si no existe
if (-not (Test-Path $repo_path)) {
    git clone https://github.com/Falconmx1/PowerMaxShell.git $repo_path
}

# Agregar al perfil
$line_to_add = "`n. `"$repo_path\powermaxshell.ps1`""
if (-not (Select-String -Path $profile_path -Pattern "PowerMaxShell" -Quiet)) {
    Add-Content -Path $profile_path -Value $line_to_add
    Write-Host "✅ PowerMaxShell agregado a $profile_path"
} else {
    Write-Host "⚠️ PowerMaxShell ya estaba instalado"
}

Write-Host "🔄 Reinicia tu terminal o ejecuta: & `"$profile_path`""
