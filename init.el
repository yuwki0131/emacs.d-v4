;;; package --- emacs init.el
;;; Commentary:
;;;  Emacs init.el root
;;; Code:

;; when starting up

;; WIP: 設定ファイルのルート
(add-to-list 'load-path "~/.emacs.d/alter")

(require 'primary)
(require 'secondary)
(require 'builtin)
(require 'font)
(require 'xolor)
(require 'appearance)
(require 'hooks)
(require 'lang)
(require 'key)

'(setq default-directory "~/")

;;; position

(setq initial-frame-alist
      '((top . 50)
        (left . 200)
        (width . 100)
        (height . 55)
        ))

;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(duplicate-thing nix-ts-mode nixpkgs-fmt nix-mode evil magit wgrep use-package path-headerline-mode doom-modeline counsel company good-scroll avy org-bullets doom-themes all-the-icons
     comment-dwim-2 ibuffer-vc smartparens beacon super-save ace-window expand-region helpful vterm markdown-mode
    diredfl all-the-icons-dired dired-open toml-mode json-mode envrc
    highlight-indent-guides yasnippet neotree popwin aggressive-indent multiple-cursors origami)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

