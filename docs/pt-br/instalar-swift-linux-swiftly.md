# Como instalar a linguagem Swift no Linux com o Swiftly

O [Swiftly](https://swiftlang.github.io/swiftly/) é uma CLI desenvolvida para facilitar a instalação, gerenciamento e alternância entre diferentes versões (toolchains) da linguagem de programação [Swift](https://www.swift.org/).

> Se você já utiliza ferramentas como [rustup](https://rustup.rs/) para Rust ou [pyenv](https://github.com/pyenv/pyenv) para Python, o Swiftly oferecerá uma experiência **semelhante**.

A ferramenta foi desenvolvida em Swift e é conhecida por ser extremamente fácil de instalar e utilizar.

## Instalação

### Bash

```bash
curl -O https://download.swift.org/swiftly/linux/swiftly-$(uname -m).tar.gz && \
tar zxf swiftly-$(uname -m).tar.gz && \
./swiftly init --quiet-shell-followup && \
. "${SWIFTLY_HOME_DIR:-$HOME/.local/share/swiftly}/env.sh" && \
hash -r
```

### Fish

```bash
curl -O https://download.swift.org/swiftly/linux/swiftly-(uname -m).tar.gz && \
tar zxf swiftly-(uname -m).tar.gz && \
./swiftly init --quiet-shell-followup && \
set -q SWIFTLY_HOME_DIR && source "$SWIFTLY_HOME_DIR/env.fish" || source ~/.local/share/swiftly/env.fish
```

## Comandos

Instalar a versão mais recente da lingaguem de programação Swift:

```bash
swiftly install \
latest
```
  
Instalar uma versão especifica:

```bash
swiftly install \
5.10
```
    
Remover uma versão:

```bash
swiftly uninstall \
6.0
```

Definir a versão mais recente como padrão:

```bash
swiftly use \
latest
```

Definir uma versão especifica:

```bash
swiftly use \
5.10
```

Atualizar a versão que está definida como padrão:

```bash
swiftly update
```

Atualizar uma versão específica:

```bash
swiftly update \
5.10
```

Listar todas as versões instaladas:

```bash
swiftly list
```

## Como Atualizar o Swiftly

```bash
swiftly self-update
```

## Extra

- [Documentação](https://www.swift.org/swiftly/documentation/swiftlydocs/).

### Visual Studio Code

- [Swift](https://marketplace.visualstudio.com/items?itemName=swiftlang.swift-vscode).
