# 🍻 Como instalar e configurar o gerenciador de pacotes Homebrew no macOS! 🍎

Se você é um desenvolvedor ou apenas quer mais controle sobre as ferramentas no seu Mac, o [Homebrew](https://brew.sh/) é indispensável!

Ele funciona como uma loja de aplicativos de linha de comando, permitindo instalar rapidamente milhares de utilitários de código aberto.

Aqui está o guia rápido e essencial para instalar e configurar.

## Passo 1: Instalação via terminal 💻

Abra o seu **Terminal** (Aplicativos > Utilitários) e cole este comando oficial.

Ele vai baixar e executar o script de instalação:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

> ⚠️ Atenção: O sistema pedirá sua **senha de administrador** e pode solicitar a instalação das **Xcode Command Line Tools**.

---

## Passo 2: Configurando o PATH ⚙️

Após a instalação, você precisa garantir que o comando `brew` funcione em qualquer lugar.

### 1. Abra o arquivo de perfil:

```bash
nano ~/.zshrc
```

> Você pode utilizar o nana ou qualquer outro editor de texto.

### 2. Adicione a linha de exportação:

Se você usa um Mac com Apple Silicon (M1, M2, etc) ou Intel recente, adicione esta linha no **final do arquivo**:

```bash
export PATH="/opt/homebrew/bin:$PATH"
```

### 3. Salve e saia:

  * Pressione `Ctrl + o` para salvar.
  * Pressione `Enter` para confirmar o nome do arquivo.
  * Pressione `Ctrl + x` para sair.

### 4. Aplique as mudanças:

Execute este comando para carregar a nova configuração imediatamente:

```bash
source ~/.zshrc
```

---

## Passo 3: Verificação final ✅

Execute o `brew doctor` para confirmar que está tudo pronto:

```bash
brew doctor
```

Se a resposta for: **"Your system is ready to brew."**, parabéns! O Homebrew está instalado e configurado perfeitamente!

Agora você pode começar a instalar seus pacotes favoritos, como `git`, `wget`, `node`, e muito mais, usando comandos simples como:

```bash
brew install nome-do-pacote
```

Para atualziar todos os pacotes instalados através do Homebrew, execute:

```bash
brew upgrade
```
