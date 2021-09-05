;;; min-packages.el --- packages
;;; Commentary:
;;;  フォント設定
;;; Code:

(require 'package)
(setq package-archives
      '(("gnu" . "https://elpa.gnu.org/packages/")
        ("melpa" . "https://melpa.org/packages/")
        ("melpa-stable" . "https://stable.melpa.org/packages/")
        ("marmalade"    . "http://marmalade-repo.org/packages/")
        ("elpa-gnu"     . "http://elpa.gnu.org/packages/")
        ))
(package-initialize)

;;; ---------------------------------------------------------------------------
;;; counsel: counsel for M-x
;;; ---------------------------------------------------------------------------
(use-package counsel
  :config
  (defvar counsel-find-file-ignore-regexp
    (regexp-opt '("./" "../")))
  (global-set-key (kbd "M-x") 'counsel-M-x)
  (setq
   counsel-preselect-current-file t
   counsel-yank-pop-preselect-last t
   ))

;;; ---------------------------------------------------------------------------
;;; package-func : company : 自動補完
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
      vcs checker
      buffer-info
      )
    '())
  (defun setup-custom-doom-modeline ()
    (doom-modeline-set-modeline 'my-simple-line 'default))
  (add-hook 'doom-modeline-mode-hook 'setup-custom-doom-modeline))

;; candidates
;; - undotree
;; - wgrep
;; - codic
;; - swiper
;; - (connsel)
;; - (company)
;; - doom
;; -
;; -
;; - magit
;; -
;; -
;; -

;;;---------------------------------------------------------------------------
;;; provide
;;;---------------------------------------------------------------------------
(provide 'min-packages)
;;; min-packages.el ends here
