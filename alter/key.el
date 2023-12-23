;;; package --- key.el
;;; Commentary:
;;;  キーバインド設定
;;; Code:

(global-unset-key "\C-e")
(global-unset-key "\C-a")
(global-unset-key "\C-z")
(global-unset-key "\M-m")

(global-set-key "\C-x\C-f" 'counsel-find-file)
(global-set-key "\C-s"     'swiper)

;;; minimum key bindings
(global-set-key "\C-q" 'undo)
(global-set-key "\M-q" 'undo-redo)
(global-set-key "\C-h" 'delete-backward-char)
(global-set-key "\M-h" 'backward-kill-word)

(global-set-key "\C-z\C-r" 'replace-string)
(global-set-key "\C-z\C-p" 'package-install)


(global-set-key "\C-e\C-c" 'shell)
(global-set-key "\C-e\C-m" 'counsel-switch-buffer)
(global-set-key "\C-e\C-f" 'next-buffer)
(global-set-key "\C-e\C-b" 'previous-buffer)
(global-set-key "\C-e\C-a" 'move-beginning-of-line)
(global-set-key "\C-e\C-e" 'move-end-of-line)

(global-set-key "\C-a\C-a" 'comment-dwim)
(global-set-key "\C-a\C-r" 'rectangle-mark-mode)
(global-set-key "\C-a\C-k" 'kill-this-buffer)
(global-set-key "\C-a\C-y" 'counsel-yank-pop)

(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <down>")  'windmove-down)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <right>") 'windmove-right)

;;; ---------------------------------------------------------------------------
;;; provide
;;; ---------------------------------------------------------------------------
(provide 'key)
;;; key.el ends here
