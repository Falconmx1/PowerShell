# Navegación rápida (como Zsh)
function .. { Set-Location .. }
function ... { Set-Location ..\.. }
function .... { Set-Location ..\..\.. }
function ..... { Set-Location ..\..\..\.. }
function ~ { Set-Location ~ }
function - { Set-Location - }

Set-Alias cd..   .. -Option AllScope
Set-Alias cd...  ... -Option AllScope
Set-Alias cd~    ~ -Option AllScope
