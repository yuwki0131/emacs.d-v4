;;; package --- emacs init.el
;;; Commentary:
;;;  Emacs init.el root
;;; Code:

;; WIP: 設定ファイルのルート
(add-to-list 'load-path "~/.emacs.d/alter")

(require 'builtin)
(require 'font)
(require 'color)
(require 'appearance)
(require 'key)
(require 'min-packages)

(setq default-directory "~/")

;;; position

(setq initial-frame-alist
      '((top . 50)
        (left . 200)
        (width . 100)
        (height . 55)
        ))

(setq-default mode-line-format
              '((:eval
                 (cond
                   (buffer-read-only
                    (propertize " ⚑ "
                                'face '(:foreground "red" :weight 'bold)
                                'help-echo "buffer is read-only!!!"))
                   ((buffer-modified-p)
                    (propertize " ☡ "
                                'face '(:foreground "orange")
                                'help-echo "buffer modified."))))
                (:eval (if (memq (buffer-local-value 'major-mode (current-buffer))
                                 '(ruby-mode enh-ruby-mode))
                           (propertize "Ruby" 'face '(:foreground "green"))
                         (propertize "Not Ruby" 'face '(:foreground "orange"))))))

(setq frame-title-format "full load")

;;; init.el ends here
