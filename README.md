<div align="center">

# ⚡ PowerMaxShell

### *La fusión épica de PowerShell con el flow de Zsh*

[![PowerShell Version](https://img.shields.io/badge/PowerShell-5.1+-blue?logo=powershell&logoColor=white)](https://github.com/Falconmx1/PowerShell)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](http://makeapullrequest.com)
[![Made with ❤️ in México](https://img.shields.io/badge/Made%20with-❤️-red?color=red)](https://github.com/Falconmx1)

![PowerMaxShell Demo](https://via.placeholder.com/800x400?text=PowerMaxShell+Demo+-+Tu+terminal+nunca+será+la+misma)

</div>

---

## 🎯 ¿Qué es esto?

¿Cansado de la PowerShell aburrida y sin sabor? `PowerMaxShell` le mete **sazón, flow y poder de Zsh** a tu terminal en Windows.

**No necesitas** instalar WSL, ni Git Bash, ni nada raro. Todo corre **nativo en PowerShell** pero con el corazón y estilo de Zsh.

---

## ✨ Características que te van a volar la cabeza

| Característica | ¿Qué hace? |
|----------------|-------------|
| 🎨 **Banner RGB chingón** | Aparece cada que abres tu terminal. Colores neón, ascii art, la neta se ve bien perrón |
| 💻 **Prompt estilo Zsh** | Muestra carpeta actual, rama de Git, hora, y el status del último comando (✔/✘) |
| 🧠 **Auto-sugerencias** | Mientras escribes, te predice comandos (como Zsh). Solo dale → para aceptar |
| 📜 **Historial infinito** | Nunca pierdes un comando. Ctrl+R para buscar en tu historial como dios manda |
| ⚡ **Alias bestiales** | `gst`, `gco`, `gcb`, `ll`, `..`, `touch`, `mkcd`... puro flow |
| 🔌 **Plugins ligeros** | Todo está modularizado. Fácil de modificar o quitar lo que no quieras |
| 🚀 **Instalación en 1 línea** | Copias, pegas, y ya estás listo para volar |

---

## 📸 Vista previa

```powershell
   ╔══════════════════════════════════════════════╗
   ║  ██████╗ ██╗    ██╗███████╗██████╗ ███╗   ███╗  ║
   ║  ██╔══██╗██║    ██║██╔════╝██╔══██╗████╗ ████║  ║
   ║  ██████╔╝██║ █╗ ██║█████╗  ██████╔╝██╔████╔██║  ║
   ║  ██╔═══╝ ██║███╗██║██╔══╝  ██╔══██╗██║╚██╔╝██║  ║
   ║  ██║     ╚███╔███╔╝███████╗██║  ██║██║ ╚═╝ ██║  ║
   ║  ╚═╝      ╚══╝╚══╝ ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝  ║
   ╠══════════════════════════════════════════════╣
   ║   🚀 PowerMaxShell v1.0 - Zsh flow for Windows║
   ║   💻 Usuario: Falconmx1  |  ⏰ 14:32:07       ║
   ╚══════════════════════════════════════════════╝

📁 Documents [main] | ➜


🚀 Instalación (más fácil que robar dulces)
Opción 1: Instalador automático (RECOMENDADA)

Abre PowerShell como administrador y ejecuta:
powershell

Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser -Force
iex "& { $(irm https://raw.githubusercontent.com/Falconmx1/PowerShell/main/install.ps1) }"

    🔥 Eso es todo. Se encarga de todo solito. Reinicia PowerShell y disfruta.


Opción 2: Manual (si eres de los que les gusta tocar todo)
# 1. Clona el repo
git clone https://github.com/Falconmx1/PowerShell.git ~/PowerMaxShell

# 2. Agrega esto a tu perfil de PowerShell
notepad $PROFILE.CurrentUserCurrentHost

# 3. Pega esta línea:
. "~\PowerMaxShell\powermaxshell.ps1"

# 4. Guarda, cierra y vuelve a abrir PowerShell

🎮 Comandos y alias (los que más vas a usar)
Git (como en Zsh) 🧙
gst         # git status
gco main    # git checkout main
gcb feature # git checkout -b feature
gaa         # git add --all
gcm "msg"   # git commit -m "msg"
glog        # git log --oneline --graph
gp          # git push
gpl         # git pull
gd          # git diff

Navegación 🚪
..          # subir un nivel
...         # subir dos niveles
~           # ir al home
-           # ir al directorio anterior

Utilidades 🛠️
ll          # ls -la bien formateado
touch file  # crear archivo vacío
mkcd folder # crear carpeta y entrar
which node  # buscar un comando
rmrf folder # borrar con todo (cuidado!)
