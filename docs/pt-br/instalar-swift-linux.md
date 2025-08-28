# Como instalar a linguagem de programação Swift no Linux

Hoje veremos com instalar a instalar a linguagem de programação Swift em distribuições Linux.

## Instalação a partir do repositório

Algumas distribuições Linux fornecem a linguagem de programação Swift em seus repositórios, contudo a versão da linguagem pode variar bastante.

### Fedora

```bash
sudo dnf install \
swift-lang \
swiftlint
```

### Arch Linux

##### AUR

Para realizar a instalação a partir do binário:

```bash
paru -S \
swift-bin \
swift-format
```

> `yay -S swift-bin swift-format`.

---

## Instalação a partir do código fonte

Para instalar a linguagem de programação Swift a partir do código fontes é necessária a instalação de algumas dependências na distribuição Linux que se está utilizando.

### Dependências

#### Debian 12

```bash
sudo apt install \
binutils-gold \
gcc \
git \
libcurl4-openssl-dev \
libedit-dev \
libicu-dev \
libncurses-dev \
libpython3-dev \
libsqlite3-dev \
libxml2-dev \
pkg-config \
tzdata \
uuid-dev
```

#### Fedora

```bash
sudo dnf install \
binutils \
gcc \
git \
libcurl-devel \
libedit-devel \
libicu-devel \
libuuid-devel \
libxml2-devel \
python3-devel \
sqlite-devel \
unzip
```

#### Ubuntu

```bash
sudo apt install \
binutils \
git \
gnupg2 \
libc6-dev \
libcurl4-openssl-dev \
libedit2 \
libgcc-13-dev \
libncurses-dev \
libpython3-dev \
libsqlite3-0 \
libstdc++-13-dev \
libxml2-dev \
libz3-dev \
pkg-config \
tzdata \
unzip \
zlib1g-dev
```

Após a instalação da dependências realize o download do código fonte no site:

- [https://www.swift.org/install/linux](https://www.swift.org/install/linux)
    
Ao finalizar o download do arquivo `*.tar.gz` descompacte o mesmo com o comando:

```bash
tar xzf swift-VERSION-PLATFORM.tar.gz \
--directory ~/.local
```

> ⚠️ Lembre-se de substituir **VERSION-PLATFORM** pela versão e plataforma que você fez download.

Por fim precisamos adicionar o caminho até a pasta `bin` ao `PATH` do sistema operacional:

```bash
echo 'export PATH=~/.local/swift-VERSION-PLATFORM/usr/bin:$PATH' \
>> ~/.bashrc && source ~/.bashrc
```

Para verificar a instalação da linguagem de programação Swift, feche o terminal, abra novamente e digite:

```bash
swift --version
```

## Extra

### Visual Studio Code

- [Swift](https://marketplace.visualstudio.com/items?itemName=swiftlang.swift-vscode).
