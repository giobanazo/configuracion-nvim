# Configuración Neovim

> Se recomienda tener Neovim 0.12 o superior, ya que versiones anteriores
> pueden generar problemas con algunos plugins utilizados en esta configuración.

## Requisitos previos

Antes de usar esta configuración hay que instalar las siguientes herramientas:

---

### 🌳 tree-sitter-cli

Para instalar esta herramienta primero necesitas tener **Node.js** y **npm**.

```bash
npm install -g tree-sitter-cli
```

> Si estás en Debian/Ubuntu y te da error de permisos:
> ```bash
> sudo npm install -g tree-sitter-cli
> ```

---

### 😴 lazygit

**Linux (Debian / Ubuntu):**
```bash
sudo apt install lazygit
```

**Windows** (usando winget):
```bash
winget install -e --id JesseDuffield.lazygit
```

O con Scoop:
```bash
scoop install lazygit
```

**macOS** (usando Homebrew):
```bash
brew install lazygit
```

---

## Instalación de la configuración

**Linux y macOS:**
```bash
# 1. Haz un respaldo de tu configuración actual (si tienes una)
mv ~/.config/nvim ~/.config/nvim.bak

# 2. Clona este repositorio
git clone https://github.com/giobanazo/configuracion-nvim.git ~/.config/nvim

# 3. Abre nvim — los plugins se instalan automáticamente
nvim
```

**Windows** (PowerShell):
```powershell
# 1. Haz un respaldo de tu configuración actual (si tienes una)
Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.bak

# 2. Clona este repositorio
git clone https://github.com/giobanazo/configuracion-nvim.git $env:LOCALAPPDATA\nvim

# 3. Abre nvim — los plugins se instalan automáticamente
nvim
```
