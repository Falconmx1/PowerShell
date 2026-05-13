# Historial infinito (como Zsh)
$global:MaximumHistoryCount = 9999
Set-PSReadLineOption -HistorySavePath "$env:USERPROFILE\.powershell_history"
Set-PSReadLineOption -HistorySearchCursorMovesToEnd

# Ctrl+R para búsqueda inversa
Set-PSReadLineKeyHandler -Key Ctrl+r -Function HistorySearchBackward
