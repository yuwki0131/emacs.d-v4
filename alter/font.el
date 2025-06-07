;;; font.el --- packages
;;; Commentary:
;;;  フォント設定
;;; Code:

(global-font-lock-mode t)

(setq font-lock-support-mode 'jit-lock-mode)

(defvar default-font-name "HackGen35 Console")

(defvar default-font-jp-name "HackGen35 Console")

;; 半角フォント: abc...
(when (fboundp 'set-face-attribute)
  (set-face-attribute
   'default nil :family default-font-name :height 110))

;; 日本語全角フォント: あいうえお...
(when (fboundp 'set-fontset-font)
  (set-fontset-font
   'nil 'japanese-jisx0208
   (font-spec :family default-font-jp-name :height 105)))

;; ギリシャ文字全角フォント: αβγκλ...
(when (fboundp 'set-fontset-font)
  (set-fontset-font
   'nil '(#x0370 . #x03FF)
   (font-spec :family default-font-name :height 120)))

;; キリル文字全角フォント: Эта статья ... Русский
(when (fboundp 'set-fontset-font)
  (set-fontset-font
   'nil '(#x0400 . #x04FF)
   (font-spec :family default-font-name :height 120)))

;;;---------------------------------------------------------------------------
;;; provide
;;;---------------------------------------------------------------------------
(provide 'font)
;;; font.el ends here
