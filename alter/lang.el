;;; lang.el --- packages
;;; Commentary:
;;;  各言語向け設定
;;; Code:

(use-package yaml-mode
  :config
  (add-hook 'yaml-mode-hook
            (lambda ()
              (setq indent-tabs-mode nil)
              (setq yaml-indent-offset 2))))

;;; ---------------------------------------------------------------------------
;;; markdown
;;; ---------------------------------------------------------------------------
(use-package markdown-mode
  :mode "\\.md\\'"
  :hook (markdown-mode . visual-line-mode))

;;; ---------------------------------------------------------------------------
;;; nix language support
;;; ---------------------------------------------------------------------------
(use-package nix-mode
  :mode "\\.nix\\'"
  :hook (nix-mode . lsp-deferred))

(use-package nixpkgs-fmt
  :after nix-mode
  :hook (nix-mode . nixpkgs-fmt-on-save-mode))

;;; ---------------------------------------------------------------------------
;;; lsp-mode
;;; ---------------------------------------------------------------------------
(use-package lsp-mode
  :commands (lsp lsp-deferred)
  :custom
  (lsp-keymap-prefix "C-c l")
  :hook ((nix-mode . lsp-deferred)))

(use-package lsp-ui
  :commands lsp-ui-mode)

;;;---------------------------------------------------------------------------
;;; provide
;;;---------------------------------------------------------------------------
(provide 'lang)
;;; lang.el ends here
