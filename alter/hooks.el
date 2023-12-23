;;; package --- builtin.el
;;; Commentary:
;;;  Hook設定
;;; Code:


;; trim trailing whitespaces while saveing
(add-hook 'write-file-hooks 'delete-trailing-whitespace nil t)

;; シェルモードで補完
(add-hook 'shell-mode-hook 'company-mode)

;;; ---------------------------------------------------------------------------
;;; provide
;;; ---------------------------------------------------------------------------
(provide 'hooks)
;;; hooks.el ends here
