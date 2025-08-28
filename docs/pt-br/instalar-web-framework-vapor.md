# Como instalar o web framework Vapor

- [Site oficial](https://vapor.codes).
- [Vapor toolbox](https://github.com/vapor/toolbox).
- [Github](https://github.com/vapor/vapor).
- [Swift package index](https://swiftpackageindex.com/vapor/vapor).

## Instalação

### macOS

> O Xcode deve estar instalado no sistema operacional.

Instalar o CLI (Vapor toolbox):

```zsh
brew install \
vapor
```

### Linux

```bash
git clone https://github.com/vapor/toolbox.git
cd toolbox
git checkout <desired version>
make install
```

> Para verificar as versões disponíveis [clique aqui](https://github.com/vapor/toolbox/releases).

> Também é possível utilizar o [Homebrew](https://brew.sh/) no Linux.

## Comandos

Iniciar um projeto:

```bash
vapor new hello -n
```

> O `-n` responde automaticamente não a todas as perguntas.

### Construir (build) e executar (run) o projeto:

#### Xcode:

```zsh
open Package.swift
```

#### Linux/Microsoft Windows (WSL):

```bash
swift run
```

O aplicativo pode ser acessado através dos endereços:

- [http://localhost:8080](http://localhost:8080).
- [http://localhost:8080/hello](http://localhost:8080/hello).
- [http://127.0.0.1:8080](http://127.0.0.1:8080).
- [http://127.0.0.1:8080/hello](http://127.0.0.1:8080/hello).

## Extra

### Visual Studio Code

- [Swift](https://marketplace.visualstudio.com/items?itemName=swiftlang.swift-vscode).
- [Vapor for VS Code](https://marketplace.visualstudio.com/items?itemName=Vapor.vapor-vscode).
