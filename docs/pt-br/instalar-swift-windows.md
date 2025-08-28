# Como instalar a linguagem de programação Swift no Windows

## Instalação

Para realizar a instalação da linguagem de programação Swift pode ser necessário ativar o modo desenvolvedor do Microsoft Windows `System` -> `For developers`.

### WinGet

O [Windows Package Manager](https://learn.microsoft.com/en-us/windows/package-manager/) (também conhecido como WinGet).

Abra o PowerShell e digite:

```bash
winget install `
--id Microsoft.VisualStudio.2022.Community `
--exact `
--force `
--custom "--add Microsoft.VisualStudio.Component.Windows11SDK.22000 --add Microsoft.VisualStudio.Component.VC.Tools.x86.x64 --add Microsoft.VisualStudio.Component.VC.Tools.ARM64"
```

Agora instale a linguagem de programação Swift com o comando:

```bash
winget install `
-e `
--id Swift.Toolchain
```

Para verificar a instalação da linguagem de programação Swift, feche o terminal, abra novamente e digite:

```bash
swift --version
```

## Extra

### Visual Studio Code

- [Swift](https://marketplace.visualstudio.com/items?itemName=swiftlang.swift-vscode).
