;; Open .v files with Proof General's Coq mode
(package-initialize)
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (add-to-list 'package-archives
               (cons "melpa" (concat proto "://melpa.org/packages/")) t))
(package-initialize)

(setq custom-safe-themes t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#3F3F3F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#DCDCCC"])
 '(auto-revert-interval 1)
 '(company-lsp-cache-candidates t)
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(custom-enabled-themes (quote (zenburn)))
 '(dynamic-completion-mode t)
 '(fci-rule-color "#383838")
 '(flymake-gui-warnings-enabled nil)
 '(flymake-start-on-flymake-mode nil)
 '(global-robe-mode t)
 '(inf-ruby-default-implementation "pry")
 '(inhibit-startup-screen t)
 '(js-chain-indent t)
 '(js-indent-level 2)
 '(lsp-auto-guess-root nil)
 '(lsp-document-sync-method nil)
 '(lsp-lens-auto-enable t)
 '(lsp-prefer-flymake nil)
 '(lsp-solargraph-autoformat t)
 '(lsp-ui-doc-alignment (quote frame))
 '(lsp-ui-doc-delay 0.1)
 '(lsp-ui-doc-enable t)
 '(lsp-ui-doc-header t)
 '(lsp-ui-doc-include-signature t)
 '(lsp-ui-doc-max-height 20)
 '(lsp-ui-doc-max-width 80)
 '(lsp-ui-doc-position (quote bottom))
 '(lsp-ui-doc-use-childframe t)
 '(lsp-ui-doc-use-webkit t)
 '(lsp-ui-flycheck-enable t)
 '(lsp-ui-flycheck-list-position (quote right))
 '(lsp-ui-imenu-enable t)
 '(lsp-ui-peek-always-show t)
 '(lsp-ui-peek-enable t)
 '(minimap-major-modes (quote (prog-mode latex-mode)))
 '(minimap-minimum-width 15)
 '(minimap-width-fraction 0.01)
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(package-selected-packages
   (quote
    (evil-magit zenburn-theme web-mode ac-inf-ruby rspec-mode yasnippet-snippets ruby-block ruby-extra-highlight inf-ruby rvm robe impatient-mode lsp-treemacs treemacs-persp treemacs-magit treemacs-icons-dired treemacs-projectile rubocop flycheck lsp-ui rinari indium smooth-scroll company-auctex auctex dante ghc ghc-imported-from haskell-mode htmlize org-tree-slide epresent minimap rainbow-delimiters airline-themes powerline powerline-evil evil langtool magit latex-unicode-math-mode latex-math-preview ac-math latex-extra latex-preview-pane latex-pretty-symbols auctex-latexmk goose-theme company-coq)))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(robe-completing-read-func (quote ido-completing-read))
 '(ruby-flymake-use-rubocop-if-available nil)
 '(save-place-mode t)
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(treemacs-file-event-delay 50)
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   (quote
    ((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3"))
 '(tool-bar-mode nil)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(lsp-ui-doc-background ((t (:background "gray13"))))
 '(lsp-ui-doc-header ((t (:background "gray12" :foreground "white"))))
 '(minimap-active-region-background ((t (:background "slate gray")))))
;; Load company-coq when opening Coq files
(setq evil-want-abbrev-expand-on-insert-exit nil)
(add-hook 'coq-mode-hook #'company-coq-mode)
(setq TeX-PDF-mode t)
(setq TeX-auto-save t)

(setq TeX-parse-self t)
(setq-default TeX-master nil)

(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
(add-hook 'LaTeX-mode-hook (lambda ()
                             (TeX-fold-mode 1)))
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)

(global-set-key (kbd "<C-tab>") 'outline-toggle-children)

(global-set-key "\C-x4w" 'langtool-check)
(global-set-key "\C-x4W" 'langtool-check-done)
(global-set-key "\C-x4l" 'langtool-switch-default-language)
(global-set-key "\C-x44" 'langtool-show-message-at-point)
(global-set-key "\C-x4c" 'langtool-correct-buffer)

(setq langtool-default-language "pt-BR")

(setq evil-want-C-u-scroll t)
(require 'evil)
(evil-mode 1)

(rainbow-delimiters-mode 1)
(add-to-list 'load-path "~/.emacs.d/vendor/emacs-powerline")
(require 'powerline)
(powerline-default-theme)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)
(global-set-key "\C-x\ g" 'magit-status)
(global-linum-mode 1)
(visual-line-mode 1)
(eval-after-load "preview"
  '(add-to-list 'preview-default-preamble "\\PreviewEnvironment{tikzpicture}" t)
  )
(add-hook 'TeX-mode-hook
  (lambda ()
    (setq TeX-command-extra-options "-shell-escape")
  )
)

(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
(add-hook 'my-pretty-language-hook 'turn-on-pretty-mode)
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(setq fancy-splash-image "~/configs/saint.png")
(setq inhibit-splash-screen nil)

(global-set-key (kbd "C-x k") 'windmove-up)
(global-set-key (kbd "C-x j") 'windmove-down)
(global-set-key (kbd "C-x h") 'windmove-left)
(global-set-key (kbd "C-x l") 'windmove-right)
(setq org-export-html-validation-link nil)
(put 'company-coq-fold 'disabled nil)
(require 'org-tree-slide)

(add-to-list 'load-path "~/.emacs.d/elpa/org-reveal/")
(require 'ox-reveal)
(setq org-export-html-validation-link nil)
(setq org-export-html-postamble nil)
(require 'ox-latex)
(add-to-list 'org-latex-classes
             '("beamer"
               "\\documentclass\[presentation\]\{beamer\}"
               ("\\section\{%s\}" . "\\section*\{%s\}")
               ("\\subsection\{%s\}" . "\\subsection*\{%s\}")
               ("\\subsubsection\{%s\}" . "\\subsubsection*\{%s\}")))

(eval-after-load "linum"
  '(set-face-attribute 'linum nil :height 100))
(require 'latex-pretty-symbols) 

(setq scroll-conservatively 10)
(setq scroll-margin 7)

(require 'ido)
(ido-mode t)

(require 'rinari)

(require 'lsp-mode)
(add-hook 'prog-mode-hook #'lsp)

(require 'company-lsp)
(push 'company-lsp company-backends)

(require 'lsp-ui)
(add-hook 'lsp-mode-hook 'lsp-ui-mode)

(define-key lsp-ui-mode-map [remap xref-find-definitions] #'lsp-ui-peek-find-definitions)
(define-key lsp-ui-mode-map [remap xref-find-references] #'lsp-ui-peek-find-references)

(lsp-ui-peek-jump-backward)
(lsp-ui-peek-jump-forward)

(require 'lsp)

(add-to-list 'load-path
              "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)

(add-hook 'after-init-hook 'global-company-mode)

(add-hook 'after-init-hook #'global-flycheck-mode)

(add-hook 'ruby-mode-hook 'flycheck-mode)

(add-hook 'ruby-mode-hook 'robe-mode)

(eval-after-load 'company
  '(push 'company-robe company-backends))

(global-auto-revert-mode 1)

(require 'use-package)

(use-package treemacs
  :ensure t
  :defer t
  :init
  (with-eval-after-load 'winum
    (define-key winum-keymap (kbd "M-0") #'treemacs))
  :config
  (progn
    (setq treemacs-collapse-dirs                 (if treemacs-python-executable 3 0)
          treemacs-deferred-git-apply-delay      0.5
          treemacs-directory-name-transformer    #'identity
          treemacs-display-in-side-window        t
          treemacs-eldoc-display                 t
          treemacs-file-event-delay              5000
          treemacs-file-extension-regex          treemacs-last-period-regex-value
          treemacs-file-follow-delay             0.2
          treemacs-file-name-transformer         #'identity
          treemacs-follow-after-init             t
          treemacs-git-command-pipe              ""
          treemacs-goto-tag-strategy             'refetch-index
          treemacs-indentation                   2
          treemacs-indentation-string            " "
          treemacs-is-never-other-window         nil
          treemacs-max-git-entries               5000
          treemacs-missing-project-action        'ask
          treemacs-no-png-images                 nil
          treemacs-no-delete-other-windows       t
          treemacs-project-follow-cleanup        nil
          treemacs-persist-file                  (expand-file-name ".cache/treemacs-persist" user-emacs-directory)
          treemacs-position                      'left
          treemacs-recenter-distance             0.1
          treemacs-recenter-after-file-follow    nil
          treemacs-recenter-after-tag-follow     nil
          treemacs-recenter-after-project-jump   'always
          treemacs-recenter-after-project-expand 'on-distance
          treemacs-show-cursor                   nil
          treemacs-show-hidden-files             t
          treemacs-silent-filewatch              nil
          treemacs-silent-refresh                nil
          treemacs-sorting                       'alphabetic-asc
          treemacs-space-between-root-nodes      t
          treemacs-tag-follow-cleanup            t
          treemacs-tag-follow-delay              1.5
          treemacs-width                         35)

    ;; The default width and height of the icons is 22 pixels. If you are
    ;; using a Hi-DPI display, uncomment this to double the icon size.
    ;;(treemacs-resize-icons 44)

    (treemacs-follow-mode t)
    (treemacs-filewatch-mode t)
    (treemacs-fringe-indicator-mode t)
    (pcase (cons (not (null (executable-find "git")))
                 (not (null treemacs-python-executable)))
      (`(t . t)
       (treemacs-git-mode 'deferred))
      (`(t . _)
       (treemacs-git-mode 'simple))))
  :bind
  (:map global-map
        ("M-0"       . treemacs)
        ("C-x t 1"   . treemacs-delete-other-windows)
        ("C-x t B"   . treemacs-bookmark)
        ("C-x t C-t" . treemacs-find-file)
        ("C-x t M-t" . treemacs-find-tag)))

(use-package treemacs-evil
  :after treemacs evil
  :ensure t)

(use-package treemacs-projectile
  :after treemacs projectile
  :ensure t)

(use-package treemacs-icons-dired
  :after treemacs dired
  :ensure t
  :config (treemacs-icons-dired-mode))

(use-package treemacs-magit
  :after treemacs magit
  :ensure t)

(use-package treemacs-persp
  :after treemacs persp-mode
  :ensure t
  :config (treemacs-set-scope-type 'Perspectives))

(require 'rvm)
(rvm-use-default) ;; use rvm's default ruby for the current Emacs session

(add-hook 'ruby-mode-hook #'ruby-extra-highlight-mode)

(unless (package-installed-p 'inf-ruby)
  (package-install 'inf-ruby))

(defadvice inf-ruby-console-auto (before activate-rvm-for-robe activate)
  (rvm-activate-corresponding-ruby))

(global-set-key "\M-d" 'lsp-ui-peek-find-definitions)
(global-set-key "\M-r" 'lsp-ui-peek-find-references)
(global-set-key "\M-m" 'rinari-find-model)
(global-set-key "\M-v" 'rinari-find-view)
(global-set-key "\M-c" 'rinari-find-controller)

(yas-reload-all)
(add-hook 'prog-mode-hook #'yas-minor-mode)

;; Bind `SPC' to `yas-expand' when snippet expansion available (it
;; will still call `self-insert-command' otherwise).
(define-key yas-minor-mode-map (kbd "SPC") yas-maybe-expand)
;; Bind `C-c y' to `yas-expand' ONLY.
(define-key yas-minor-mode-map (kbd "C-c y") #'yas-expand)

(projectile-mode +1)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(global-set-key "\C-c\ k" 'kill-buffer)

(setq ruby-insert-encoding-magic-comment nil)

(add-hook 'text-mode-hook 'turn-on-visual-line-mode)

(global-visual-line-mode 1)

(setq-default flycheck-disabled-checkers
  (append flycheck-disabled-checkers
    '(javascript-jshint)))

(flycheck-add-mode 'javascript-eslint 'web-mode)

;; use local eslint from node_modules before global
;; http://emacs.stackexchange.com/questions/21205/flycheck-with-file-relative-eslint-executable
(defun my/use-eslint-from-node-modules ()
  (let* ((root (locate-dominating-file
                (or (buffer-file-name) default-directory)
                "node_modules"))
         (eslint (and root
                      (expand-file-name "node_modules/eslint/bin/eslint.js"
                                        root))))
    (when (and eslint (file-executable-p eslint))
      (setq-local flycheck-javascript-eslint-executable eslint))))
(add-hook 'flycheck-mode-hook #'my/use-eslint-from-node-modules)

(setq evil-magit-state 'motion)
(require 'evil-magit)
