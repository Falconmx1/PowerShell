function Show-PowerMaxBanner {
    $colors = @(
        "`e[38;2;255;85;85m",  # rojo neón
        "`e[38;2;255;170;85m", # naranja
        "`e[38;2;255;255;85m", # amarillo
        "`e[38;2;85;255;85m",  # verde
        "`e[38;2;85;255;255m", # cian
        "`e[38;2;85;85;255m"   # azul
    )
    
    $banner = @"
${colors[0]}   ╔══════════════════════════════════════════════╗
${colors[1]}   ║  ██████╗ ██╗    ██╗███████╗██████╗ ███╗   ███╗${colors[2]}  ║
${colors[2]}   ║  ██╔══██╗██║    ██║██╔════╝██╔══██╗████╗ ████║${colors[3]}  ║
${colors[3]}   ║  ██████╔╝██║ █╗ ██║█████╗  ██████╔╝██╔████╔██║${colors[4]}  ║
${colors[4]}   ║  ██╔═══╝ ██║███╗██║██╔══╝  ██╔══██╗██║╚██╔╝██║${colors[5]}  ║
${colors[5]}   ║  ██║     ╚███╔███╔╝███████╗██║  ██║██║ ╚═╝ ██║${colors[0]}  ║
${colors[0]}   ║  ╚═╝      ╚══╝╚══╝ ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝${colors[1]}  ║
${colors[1]}   ╠══════════════════════════════════════════════╣
${colors[2]}   ║   🚀 PowerMaxShell v1.0 - Zsh flow for Windows${colors[3]}  ║
${colors[3]}   ║   💻 Usuario: $env:USERNAME  |  📂 Path: $(Get-Location)${colors[4]}  ║
${colors[4]}   ╚══════════════════════════════════════════════╝
"@
    Write-Host $banner
    Write-Host "`e[0m"  # reset
}
