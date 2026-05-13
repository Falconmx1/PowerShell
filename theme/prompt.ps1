function prompt {
    $exit_code = $LASTEXITCODE
    $git_branch = git branch --show-current 2>$null
    $time = Get-Date -Format "HH:mm:ss"
    
    $color_path = "`e[38;2;0;200;255m"
    $color_git = "`e[38;2;255;100;100m"
    $color_prompt = "`e[38;2;50;255;50m"
    $reset = "`e[0m"
    
    $path_display = "📁 $(Get-Location | Split-Path -Leaf)"
    $git_display = if ($git_branch) { " [$color_git $git_branch$reset]" } else { "" }
    $status_display = if ($exit_code -ne 0) { "`e[91m✘$reset" } else { "`e[92m✔$reset" }
    
    Write-Host "`n$color_path$path_display$git_display $reset| $color_prompt➜$reset "
    return " "
}
