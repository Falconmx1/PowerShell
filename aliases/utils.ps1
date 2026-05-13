# Utilidades estilo Linux/Zsh
function ll { Get-ChildItem -Force | Format-Table -AutoSize }
function l { Get-ChildItem -Force -Name }
function la { Get-ChildItem -Force -Hidden }
function touch { New-Item -ItemType File -Path $_ -Force }
function mkcd {
    param([string]$Path)
    New-Item -ItemType Directory -Path $Path -Force
    Set-Location $Path
}
function which { Get-Command $_ -ErrorAction SilentlyContinue }

Set-Alias md      mkdir
Set-Alias rd      rmdir
Set-Alias rmrf    Remove-Item -Recurse -Force
Set-Alias grep    Select-String
