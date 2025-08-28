# Como configurar o Emacs para o desenvolvimento com Swift

## Instalando o Emacs

### macOS

- [Emacs for Mac OS X](https://emacsformacosx.com/)

### Microsoft Windows

#### MSYS2

```bash
pacman -S mingw-w64-x86_64-emacs
```

#### Instalador

- [Instalador](https://ftp.eq.uc.pt/software/unix/gnu/emacs/windows/)

### Debian (Ubuntu)

```bash
sudo apt install \
emacs
```

Para servidores ou ambientes sem interface gráfica:

```bash
sudo apt install \
emacs-nox
```

### RedHat (RHEL, CentOS, Fedora)

```bash
sudo dnf install \
emacs
```


## Configurando o Emacs

- [**MELPA**](https://melpa.org/).

Abra o Emacs, pressione `C-x C-f`, digite `~/.emacs` e pressione **Enter**.

Adicione o seguinte conteúdo:

```plaintext
;;; Adiciona o MELPA como fonte de pacotes
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
```

Agora, vamos instalar o `use-package`, que simplifica a instalação e organização dos pacotes:

```plaintext
;;; Inicializa o `use-package`
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))
```

Em seguida, adicionamos uma função para localizar o `sourcekit-lsp`:

```plaintext
;;; Localiza o sourcekit-lsp
(defun find-sourcekit-lsp ()
  (or (executable-find "sourcekit-lsp")
      (and (eq system-type 'darwin)
           (string-trim (shell-command-to-string "xcrun -f sourcekit-lsp")))
      "/usr/local/swift/usr/bin/sourcekit-lsp"))
```

Para instalar os pacotes necessários para desenvolvimento com a linguagem de programação Swift:

```plaintext
;;; Pacotes úteis para desenvolvimento em Swift

;; Suporte a arquivos .editorconfig
(use-package editorconfig
    :ensure t
    :config (editorconfig-mode +1))

;; Suporte à edição de código Swift
(use-package swift-mode
    :ensure t
    :mode "\\.swift\\'"
    :interpreter "swift")

;; Delimitadores coloridos (parênteses, colchetes, etc.)
(use-package rainbow-delimiters
    :ensure t
    :hook ((prog-mode . rainbow-delimiters-mode)))

;; Autocompletar com company-mode
(use-package company
    :ensure t
    :config
    (global-company-mode +1))

;; Integração com Swift LSP
(use-package lsp-mode
    :ensure t
    :commands lsp
    :hook ((swift-mode . lsp)))

;; Interface para lsp-mode
(use-package lsp-ui
    :ensure t)

;; Suporte ao sourcekit-lsp
(use-package lsp-sourcekit
    :ensure t
    :after lsp-mode
    :custom
    (lsp-sourcekit-executable (find-sourcekit-lsp) "Find sourcekit-lsp"))
```

Pacotes para melhorar a aparência:

```plaintext
;; Powerline
(use-package powerline
  :ensure t
  :config
  (powerline-default-theme))

;; Spaceline
(use-package spaceline
  :ensure t
  :after powerline
  :config
  (spaceline-emacs-theme))
```

Caso queira desabilite a tela inicial e a barra de ferramentas:

```plaintext
;;; Desativa a tela de início
(setq inhibit-startup-screen t)

;;; Desativa a barra de ferramentas
(tool-bar-mode -1)
```

Salve seu arquivo `.emacs` com `C-x C-s` e reinicie o Emacs.

## Extra

Arquivo `.emacs` completo:

```plaintext
;;; Adiciona o MELPA como fonte de pacotes
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;;; Inicializa o `use-package`
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

;;; Localiza o sourcekit-lsp
(defun find-sourcekit-lsp ()
  (or (executable-find "sourcekit-lsp")
      (and (eq system-type 'darwin)
           (string-trim (shell-command-to-string "xcrun -f sourcekit-lsp")))
      "/usr/local/swift/usr/bin/sourcekit-lsp"))

;;; Pacotes úteis para desenvolvimento em Swift

(use-package editorconfig
    :ensure t
    :config (editorconfig-mode +1))

(use-package swift-mode
    :ensure t
    :mode "\\.swift\\'"
    :interpreter "swift")

(use-package rainbow-delimiters
    :ensure t
    :hook ((prog-mode . rainbow-delimiters-mode)))

(use-package company
    :ensure t
    :config
    (global-company-mode +1))

(use-package lsp-mode
    :ensure t
    :commands lsp
    :hook ((swift-mode . lsp)))

(use-package lsp-ui
    :ensure t)

(use-package lsp-sourcekit
    :ensure t
    :after lsp-mode
    :custom
    (lsp-sourcekit-executable (find-sourcekit-lsp) "Find sourcekit-lsp"))

(use-package powerline
  :ensure t
  :config
  (powerline-default-theme))

(use-package spaceline
  :ensure t
  :after powerline
  :config
  (spaceline-emacs-theme))

(setq inhibit-startup-screen t)
(tool-bar-mode -1)
```
