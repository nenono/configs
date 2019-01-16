;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     go
     octave
     shell-scripts
     typescript
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     ivy
     ;; auto-completion
     ;; better-defaults
     emacs-lisp
     git
     ;; markdown
     ;; org
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     ;; spell-checking
     ;; syntax-checking
     ;; version-contro
     windows-scripts
     auto-completion
     nlinum
     markdown
     asciidoc
     shell
     yaml
     html
     csv
     sql
     terraform
     javascript
     ruby
     csharp
     haskell
     scheme
     fsharp
     python
     rust
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(
                                      uniquify
                                      linum
                                      avy-migemo
                                      groovy-mode
                                      vue-mode
                                      )
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'emacs
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(spacemacs-dark
                         spacemacs-light)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Han Code JP R"
                               :size 13
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers nil
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."
    ;;; @ input
  ;; ^H を バックスペースへ
  (global-set-key (kbd "C-h") 'delete-backward-char)
  (global-set-key (kbd "<F1>") help-map)
  ;; C-/でundo M-_ でredo
  (global-set-key (kbd "C-/") 'undo-tree-undo)
  (global-set-key (kbd "M-/") 'undo-tree-redo)
  ;; C-kで行全体を削除
  (setq kill-whole-line t)
  ;; タブをスペースに
  (setq-default indent-tabs-mode nil)
  ;; ctrl-qにキーマップを定義できるよう設定
  (defvar ctl-q-map (make-keymap))
  (define-key global-map (kbd "C-q") ctl-q-map)
  ;; 括弧の補完
  (smartparens-global-mode t)

  ;; kill-ringの上限増加
  (setq kill-ring-max 20)
  ;; デフォルトの文字コード
  (prefer-coding-system 'utf-8-unix)
  (set-default-coding-systems 'utf-8-unix)
  ;; テキストファイル／新規バッファの文字コード
  (setq default-buffer-file-coding-system 'utf-8-unix)

  ;;; @ file - save
  ;; 保存時に行末のスペースをトリム
  (add-hook 'before-save-hook 'delete-trailing-whitespace)
  ;; C-q C-sでバッファを保存してkill
  (defun save-and-kill-buffer ()
    (interactive)
    (save-buffer)
    (kill-buffer nil))
  (define-key ctl-q-map (kbd "C-s") 'save-and-kill-buffer)
  ;; C-q C-w でバッファを確認なしにkill
  (defun kill-buffer-force ()
    (interactive)
    (kill-buffer nil))
  (define-key ctl-q-map (kbd "C-w") 'kill-buffer-force)
  ;; C-x K で複数バッファのkill
  (global-set-key (kbd "C-x K") 'kill-matching-buffers)
  ;; C-q hjklでウィンドウを移動
  (define-key ctl-q-map (kbd "h") 'windmove-left)
  (define-key ctl-q-map (kbd "j") 'windmove-down)
  (define-key ctl-q-map (kbd "k") 'windmove-up)
  (define-key ctl-q-map (kbd "l") 'windmove-right)
  ;; C-x C-bをC-x bと同じにする
  (global-set-key (kbd "C-x C-b") 'switch-to-buffer)
  ;;; @ scroll
  ;; スクロール時のカーソル位置を維持
  ;(setq scroll-preserve-screen-position t)
  ;; スクロール開始の残り行数
  ;(setq scroll-margin 1)
  ;; スクロール時の行数
  ;(setq scroll-conservatively 5)
  ;; スクロール時の行数（scroll-marginに影響せず）
  ;(setq scroll-step 0)
  ;; 画面スクロール時の重複表示する行数
  ;(setq next-screen-context-lines 1)
  ;; キー入力中の画面更新を抑止
  ;(setq redisplay-dont-pause t)
  ;; recenter-top-bottomのポジション
  ;(setq recenter-positions '(top bottom))
  ;; 横スクロール開始の残り列数
  ;(setq hscroll-margin 1)
  ;; 横スクロール時の列数
  ;(setq hscroll-step 1)
  ;; C-v, M-v で column を 0 にしない && バッファの端まで動く
  (defadvice scroll-up (around move-to-temporary-goal-column activate)
    (unless (memq last-command '(scroll-up scroll-down))
      (setq temporary-goal-column (current-column)))
    (if (pos-visible-in-window-p (point-max))
        (goto-char (point-max))
      ad-do-it)
    (move-to-column temporary-goal-column))
  (defadvice scroll-down (around move-to-temporary-goal-column activate)
    (unless (memq last-command '(scroll-up scroll-down))
      (setq temporary-goal-column (current-column)))
    (if (pos-visible-in-window-p (point-min))
        (goto-char (point-min))
      ad-do-it)
    (move-to-column temporary-goal-column))
  ;; cua-mode
  ;(cua-mode t)
  ;(setq cua-enable-cua-keys nil)

  ;;; @ screen - linum
  ;; 行番号の表示
  ;;(setq display-line-numbers t)
  ;;(line-number-mode t)
  ;; 列番号の表示
  ;;(column-number-mode t)

  ;; 行移動を契機に描画
  ;(defvar linum-line-number 0)
  ;(declare-function linum-update-current "linum" ())
  ;(defadvice linum-update-current
  ;  (around linum-update-current-around activate compile)
  ;  (unless (= linum-line-number (line-number-at-pos))
  ;    (setq linum-line-number (line-number-at-pos))
  ;    ad-do-it
  ;    ))
  ;; バッファ中の行番号表示の遅延設定
  ;(defvar linum-delay nil)
  ;(setq linum-delay t)
  ;(defadvice linum-schedule (around linum-schedule-around () activate)
  ;  (run-with-idle-timer 1.0 nil #'linum-update-current))
  ;; 行番号の書式
  ;(defvar linum-format nil)
  ;(setq linum-format "%5d")
  ;; バッファ中の行番号表示
  ;;(global-nlinum-mode t)
  ;; 文字サイズ
  ;;(set-face-attribute 'linum nil :height 0.75)

  ;;; @ file - lockfile
  ;; ロックファイルの生成を抑止
  (setq create-lockfiles nil)
  ;; バックアップファイル(*.~)を作らない
  (setq make-backup-files nil)
  ;; バックアップファイル(.#*)を作らない
  ;;(setq auto-save-default nil)
  ;; 自動保存リスト(.saves-<PID>-<HOSTNAME>)を作らない
  (setq auto-save-list-file-prefix nil)
  ;; 保存先ディレクトリ変更
  (let ((target-dir (expand-file-name "~/"))
        (dest-dir (expand-file-name "~/.emacs.d/auto-save-list/")))
    ;; 自動保存ファイル(#*#)の作成先変更
    (add-to-list 'auto-save-file-name-transforms
                 `(,(concat target-dir "\\([^/]*/\\)*\\([^/]*\\)$")
                   ,(concat dest-dir "\\2")
                   t))
    ;; バックアップファイル(*~)の作成先変更
    (add-to-list 'backup-directory-alist (cons target-dir dest-dir))
    ;; 自動保存リスト(.saves-<PID>-<HOSTNAME>)の作成先変更
    (setq auto-save-list-file-prefix (expand-file-name ".saves-" dest-dir)))

  ;; server明示的に起動
  (server-start)

  ;; migemo
  (require 'migemo)
  (setq migemo-command "cmigemo")
  (setq migemo-options '("-q" "--emacs" "-i" "\a"))
  (cond
   ((eq system-type 'darwin)
    (setq migemo-dictionary "/usr/local/share/migemo/utf-8/migemo-dict")
    )
   ((eq system-type 'gnu/linux)
    (setq migemo-dictionary "/usr/share/cmigemo/utf-8/migemo-dict")
    )
   ((eq system-type 'windows-nt)
    (setq migemo-dictionary "~/cmigemo-default-win64/dict/utf-8/migemo-dict")
    ))
  (setq migemo-user-dictionary nil)
  (setq migemo-regex-dictionary nil)
  (setq migemo-coding-system 'utf-8-unix)
  ;; initialize migemo
  (migemo-init)
  ;; avy-migemo
  (require 'avy-migemo)
  (avy-migemo-mode 1)
  (require 'avy-migemo-e.g.swiper)
  ;; M-yでkill-ring履歴から検索
  (global-set-key (kbd "M-y") 'counsel-yank-pop)

  ;; ruby
  (setq ruby-insert-encoding-magic-comment nil)

  ;; multi-term
  (require 'multi-term)
  ;(setq multi-term-program "fish")
  (setq multi-term-program "/bin/bash")
  ;; emacs に認識させたいキーがある場合は、term-unbind-key-list に追加する
  (dolist (x '("C-q"))
    (add-to-list 'term-unbind-key-list x))
  ;; terminal に直接通したいキーがある場合は、term-unbind-key-listからdeleteする
  ;(dolist (x '("C-r"))
  ;  (delete x term-unbind-key-list))
  ;; term-mode-hook
  (add-hook
   'term-mode-hook
   '(lambda ()
      (define-key term-raw-map "\C-h" 'term-send-backspace)
      (define-key term-raw-map "\C-y" 'term-paste)
      (define-key term-raw-map term-view-toggle-key 'toggle-term-view)))
  ;; C-q c で multi-term を起動する
  (define-key ctl-q-map (kbd "c") 'multi-term)
  ;; C-t で term-mode と fundamental-mode + view-modeを切り替える
  (setq term-view-toggle-key (kbd "C-t"))
  (defun toggle-term-view () (interactive)
         (cond ((eq major-mode 'term-mode)
                (fundamental-mode)
                (view-mode)
                (local-set-key term-view-toggle-key 'toggle-term-view)
                (setq multi-term-cursor-point (point)))
               ((eq major-mode 'fundamental-mode)
                (View-exit)
                (goto-char multi-term-cursor-point)
                (multi-term-internal))))
  ;; view-modeカスタマイズ
  (add-hook
   'view-mode-hook
   '(lambda ()
      (define-key view-mode-map "q" 'ignore)
      (define-key view-mode-map "e" 'ignore)
      (define-key view-mode-map "c" 'ignore)))

  ;; neotree
  ;; C-q t で neotree を起動する
  (define-key ctl-q-map (kbd "t") 'neotree)

  ;; SBCLをデフォルトのCommon Lisp処理系に設定
  ;;(setq inferior-lisp-program "sbcl")
  ;;(load (expand-file-name "~/.roswell/helper.el"))
  ;; SLIMEのロード
  ;;(require 'slime)
  ;;(slime-setup '(slime-repl slime-fancy slime-banner))

  ;; highlight indents
  (require 'highlight-indentation)
  (set-face-background 'highlight-indentation-face "#222244")
  (set-face-background 'highlight-indentation-current-column-face "#444488")
  (setq highlight-indentation-offset 2)
  ;; highlight-indentation-mode が呼ばれたら highlight-indentation-current-column-mode も実行する
  (add-hook
   'highlight-indentation-mode-hook
   'highlight-indentation-current-column-mode)
  (add-hook 'yaml-mode-hook 'highlight-indentation-mode)
  (add-hook 'haml-mode-hook 'highlight-indentation-mode)
  (add-hook 'markdown-mode-hook 'highlight-indentation-mode)
  (add-hook 'ruby-mode-hook 'highlight-indentation-mode)

  ;; typescript
  (setq typescript-indent-level 2)
  ;(require 'tss)
  ;(setq tss-popup-help-key "C-:")
  ;(setq tss-jump-to-definition-key "C-c d")
  ;(setq tss-implement-definition-key "C-c i")
  ;(tss-config-default)
  (require 'tide)
  (defun setup-typescript ()
    (progn
      (tide-setup)
      (flycheck-mode t)
      (flycheck-select-checker 'typescript-tslint)
      (setq flycheck-check-syntax-automatically '(save mode-enabled))
      (eldoc-mode t)
      (company-mode-on)
      (highlight-indentation-mode t)))
  (add-hook 'typescript-mode-hook 'setup-typescript)
  (add-to-list 'auto-mode-alist '("\\.tsx\\'" . typescript-mode))
  ;(add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))
  ;(add-hook 'web-mode-hook
  ;          (lambda ()
  ;            (when (string-equal "tsx" (file-name-extension buffer-file-name))
  ;              (setup-typescript))))
  ;; enable typescript-tslint checker
  ;(flycheck-add-mode 'typescript-tslint 'web-mode)

  ;; company
  (require 'company)
  (global-set-key (kbd "C-M-i") 'company-complete)
  ;; C-n, C-pで補完候補を次/前の候補を選択
  (define-key company-active-map (kbd "C-n") 'company-select-next)
  (define-key company-active-map (kbd "C-p") 'company-select-previous)
  (define-key company-search-map (kbd "C-n") 'company-select-next)
  (define-key company-search-map (kbd "C-p") 'company-select-previous)
  ;; C-sで絞り込む
  (define-key company-active-map (kbd "C-s") 'company-filter-candidates)
  ;; TABで候補を設定
  (define-key company-active-map (kbd "C-i") 'company-complete-selection)
  ;; 各種メジャーモードでもcompany-modeの補完を使う
  (define-key emacs-lisp-mode-map (kbd "C-M-i") 'company-complete)
  ; C-hがデフォルトでドキュメント表示にmapされているので、文字を消せるようにmapを外す
  (define-key company-active-map (kbd "C-h") nil)
  ; 1つしか候補がなかったらtabで補完、複数候補があればtabで次の候補へ行くように
  (define-key company-active-map (kbd "<tab>") 'company-complete-common-or-cycle)
  ; ドキュメント表示
  (define-key company-active-map (kbd "M-d") 'company-show-doc-buffer)
  (setq company-minimum-prefix-length 1) ;; 1文字入力で補完されるように
  ; 候補の一番上でselect-previousしたら一番下に、一番下でselect-nextしたら一番上に行くように
  (setq company-selection-wrap-around t)
  (require 'company-quickhelp)
  (company-quickhelp-mode +1)

  (eval-after-load "sql"
    '(load-library "sql-indent"))

  ;; desktop file
  ;; 前回開いていたファイルを開きなおす
  (setq desktop-path '("~/.emacs.d/tmp"))
  (setq desktop-files-not-to-save "\\(^/[^/:]*:\\|\\.howm-.*$\\)")
  (autoload 'desktop-save "desktop" nil t)
  (autoload 'desktop-clear "desktop" nil t)
  (autoload 'desktop-load-default "desktop" nil t)
  (autoload 'desktop-remove "desktop" nil t)
  (desktop-read)
  (add-hook 'kill-emacs-hook 'desktop-save-in-desktop-dir)

  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(avy-migemo-function-names
   (quote
    (swiper--add-overlays-migemo
     (swiper--re-builder :around swiper--re-builder-migemo-around)
     (ivy--regex :around ivy--regex-migemo-around)
     (ivy--regex-ignore-order--part :around ivy--regex-ignore-order--part-migemo-around)
     (ivy--regex-plus :around ivy--regex-plus-migemo-around)
     ivy--highlight-default-migemo ivy-occur-revert-buffer-migemo ivy-occur-press-migemo avy-migemo-goto-char avy-migemo-goto-char-2 avy-migemo-goto-char-in-line avy-migemo-goto-char-timer avy-migemo-goto-subword-1 avy-migemo-goto-word-1 avy-migemo-isearch avy-migemo--overlay-at avy-migemo--overlay-at-full)))
 '(package-selected-packages
   (quote
    (go-guru go-eldoc company-go go-mode vue-mode edit-indirect ssass-mode vue-html-mode evil-magit magit magit-popup git-commit ghub let-alist with-editor tss yaxception log4e smeargle orgit magit-gitflow gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link insert-shebang fish-mode company-shell tide typescript-mode avy-migemo yapfify yaml-mode xterm-color web-mode web-beautify toml-mode terraform-mode hcl-mode tagedit sql-indent slim-mode shell-pop scss-mode sass-mode rvm ruby-tools ruby-test-mode rubocop rspec-mode robe rbenv rake racer pyvenv pytest pyenv-mode py-isort pug-mode powershell pip-requirements omnisharp shut-up nlinum-relative nlinum multi-term mmm-mode minitest markdown-toc markdown-mode livid-mode skewer-mode simple-httpd live-py-mode less-css-mode json-mode json-snatcher json-reformat js2-refactor multiple-cursors js2-mode js-doc intero hy-mode hlint-refactor hindent haskell-snippets haml-mode groovy-mode gh-md geiser fuzzy fsharp-mode flycheck company-quickhelp pos-tip eshell-z eshell-prompt-extras esh-help emmet-mode cython-mode csv-mode csharp-mode company-web web-completion-data company-tern dash-functional tern company-statistics company-ghci company-ghc ghc haskell-mode company-cabal company-anaconda company coffee-mode cmm-mode chruby cargo rust-mode bundler inf-ruby migemo auto-yasnippet yasnippet anaconda-mode pythonic adoc-mode markup-faces ac-ispell auto-complete ws-butler winum which-key wgrep volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spaceline powerline smex restart-emacs request rainbow-delimiters popwin persp-mode pcre2el paradox spinner org-plus-contrib org-bullets open-junk-file neotree move-text macrostep lorem-ipsum linum-relative link-hint ivy-hydra info+ indent-guide hydra hungry-delete hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation hide-comnt help-fns+ helm-make helm helm-core google-translate golden-ratio flx-ido flx fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state smartparens evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-ediff evil-args evil-anzu anzu evil goto-chg undo-tree eval-sexp-fu highlight elisp-slime-nav dumb-jump popup f s diminish define-word counsel-projectile projectile pkg-info epl counsel swiper ivy column-enforce-mode clean-aindent-mode bind-map bind-key auto-highlight-symbol auto-compile packed dash async aggressive-indent adaptive-wrap ace-window ace-link avy))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
