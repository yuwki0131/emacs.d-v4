;;; package --- builtin.el
;;; Commentary:
;;;  Hook設定
;;; Code:

(defun trailing-whitespace-before-save ()
  (when (derived-mode-p 'prog-mode)
    (delete-trailing-whitespace)))

(add-hook 'before-save-hook 'trailing-whitespace-before-save)

;;; ---------------------------------------------------------------------------
;;; provide
;;; ---------------------------------------------------------------------------
(provide 'hooks)
;;; hooks.el ends here
