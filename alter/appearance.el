;;; appearance.el --- packages
;;; Commentary:
;;;  見た目設定
;;; Code:

;; カーソルタイプ
(setq-default cursor-type '(bar . 3))

;; タイトルバー
(setq frame-title-format "%b")

;; カーソル行ハイライト
(global-hl-line-mode t)

;; 余計なマージンを削除
(set-fringe-mode 0)

;; emacs 26.x以降用行番号表示
(global-display-line-numbers-mode)

;;;---------------------------------------------------------------------------
;;; provide
;;;---------------------------------------------------------------------------
(provide 'appearance)
;;; appearance.el ends here
