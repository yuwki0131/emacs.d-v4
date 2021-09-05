;;; package --- key.el
;;; Commentary:
;;;  キーバインド設定
;;; Code:

(global-unset-key "\C-e")
(global-unset-key "\C-a")
(global-unset-key "\C-z")
(global-unset-key "\M-m")

;;; minimum key bindings
(global-set-key "\C-q" 'undo)
(global-set-key "\C-h" 'delete-backward-char)
(global-set-key "\M-h" 'backward-kill-word)

(global-set-key "\C-z \C-r" 'replace-string)

(global-set-key "\C-e \C-c" 'shell)
(global-set-key "\C-e \C-m" 'counsel-switch-buffer)
(global-set-key "\C-e \C-f" 'next-buffer)
(global-set-key "\C-e \C-b" 'previous-buffer)

(global-set-key "\C-a \C-r" 'rectangle-mark-mode)
(global-set-key "\C-a \C-k" 'kill-this-buffer)

;;; ---------------------------------------------------------------------------
;;; provide
;;; ---------------------------------------------------------------------------
(provide 'key)
;;; key.el ends here
