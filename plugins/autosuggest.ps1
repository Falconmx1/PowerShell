# Auto-sugerencias (como Zsh)
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -Colors @{
    InlinePrediction = "`e[38;5;8m"
    ListPrediction = "`e[38;5;8m"
}
