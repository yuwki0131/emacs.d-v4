;;; primary.el --- packages
;;; Commentary:
;;;  package(優先)
;;; Code:

(require 'package)
(setq package-archives
      '(("gnu"          . "https://elpa.gnu.org/packages/")
        ("melpa"        . "https://melpa.org/packages/")
        ))

(package-initialize)

(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name
        "straight/repos/straight.el/bootstrap.el"
        (or (bound-and-true-p straight-base-dir)
            user-emacs-directory)))
      (bootstrap-version 7))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; for emacs versions >= 27
(setq package-enable-at-startup nil)
(setq straight-use-package-by-default t)

;;; ---------------------------------------------------------------------------
;;; counsel: counsel for M-x
;;; ---------------------------------------------------------------------------
(use-package counsel
  :config
  (defvar counsel-find-file-ignore-regexp
    (regexp-opt '("./" "../")))
  (global-set-key (kbd "M-x") 'counsel-M-x)
  ;; for all ivy
  (setq ivy-height 30)
  (setq
   counsel-preselect-current-file t
   counsel-yank-pop-preselect-last t
   ))

;;; ---------------------------------------------------------------------------
;;; marmalade: rich annotations using the Marginalia package
;;; ---------------------------------------------------------------------------
(use-package marginalia
  :bind (:map minibuffer-local-map
         ("M-A" . marginalia-cycle))
  :init
  (marginalia-mode))

;;; ---------------------------------------------------------------------------
;;; orderless: multiple word search
;;; ---------------------------------------------------------------------------
(use-package orderless
  :ensure t
  :custom
  (completion-styles '(orderless basic))
  (completion-category-overrides '((file (styles basic partial-completion)))))

;;; ---------------------------------------------------------------------------
;;; auto complete: company
;;; ---------------------------------------------------------------------------
(use-package company
  :config
  (global-company-mode 1)
  (setq
   ;; デフォルトは0.5
   company-idle-delay 0
   ;; デフォルトは0.5
   company-tooltip-idle-delay 0
   ;; デフォルトは4
   company-minimum-prefix-length 2
   ;; loop
   company-selection-wrap-around t
   ;; 補完候補の最大表示数
   company-tooltip-limit 20
   ;; 候補に番号を付与
   company-show-numbers t
   ))

;;; ---------------------------------------------------------------------------
;;; path header line mode : path header line mode
;;; ---------------------------------------------------------------------------
(use-package path-headerline-mode
  :config
  (path-headerline-mode +1))

;;; ---------------------------------------------------------------------------
;;; modern emacs modeline: doom-modeline
;;; ---------------------------------------------------------------------------
(use-package doom-modeline
  :ensure t
  :hook (after-init . doom-modeline-mode)
  :config
  (setq
   doom-modeline-height 22
   doom-modeline-lsp t)
  (doom-modeline-def-modeline 'my-simple-line
    '(bar
      input-method
      matches remote-host selection-info
      misc-info buffer-encoding
      ;; major-mode  <- rubyの場合だけ失敗する???
      process
      vcs
      buffer-info
      )
    '())
  (defun setup-custom-doom-modeline ()
    (doom-modeline-set-modeline 'my-simple-line 'default))
  (add-hook 'doom-modeline-mode-hook 'setup-custom-doom-modeline))

;;; ---------------------------------------------------------------------------
;;; magit
;;; ---------------------------------------------------------------------------
(use-package magit)

;;; ---------------------------------------------------------------------------
;;; grep packages
;;; ---------------------------------------------------------------------------
(use-package wgrep
  :config
  ;; "e"でwgrepモード有効
  (setf wgrep-enable-key "e")
  ;; wgrep終了時にバッファを保存
  (setq wgrep-auto-save-buffer t))

;; candidates
;; - undotree
;; - codic

;;;---------------------------------------------------------------------------
;;; provide
;;;---------------------------------------------------------------------------
(provide 'primary)
;;; primary.el ends here
