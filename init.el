;;; package --- emacs init.el
;;; Commentary:
;;;  Emacs init.el root
;;; Code:

;; WIP: 設定ファイルのルート
(add-to-list 'load-path "~/.emacs.d/alter")

(require 'min-packages)
(require 'builtin)
(require 'font)
(require 'color)
(require 'appearance)
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
