;;; package --- key.el
;;; Commentary:
;;;  キーバインド設定
;;; Code:

(global-unset-key "\C-e")
(global-unset-key "\C-a")
(global-unset-key "\C-z")


;;; minimum key bindings
(bind-key "C-q" 'undo)
(bind-key "C-h" 'delete-backward-char)
(bind-key "M-h" 'backward-kill-word)

(bind-key "C-z C-r" 'replace-string)
(bind-key "C-e C-c" 'shell)

(bind-key "C-a C-r" 'rectangle-mark-mode)
(bind-key "C-a C-k" 'kill-this-buffer)

;;; ---------------------------------------------------------------------------
;;; provide
;;; ---------------------------------------------------------------------------
(provide 'key)
;;; key.el ends here
