function Show-PowerMaxBanner {
    $colors = @($PMS_Red, $PMS_Orange, $PMS_Yellow, $PMS_Green, $PMS_Cyan, $PMS_Blue)
    
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
${colors[3]}   ║   💻 Usuario: $env:USERNAME  |  ⏰ $(Get-Date -Format 'HH:mm:ss')${colors[4]}  ║
${colors[4]}   ╚══════════════════════════════════════════════╝
"@
    Write-Host $banner
    Write-Host $PMS_Reset
}
