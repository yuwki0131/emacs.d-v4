;;; color.el --- packages
;;; Commentary:
;;;  色設定
;;;  色を調べるときは、M-x list-faces-display
;;; Code:

;;; ---------------------------------------------------------------------------
;;; 色設定
;;; ---------------------------------------------------------------------------
;; emphasis
(defvar color/main               "#0997B6") ;; darkcyan
(defvar color/secondary          "#FF4C00") ;; orange
(defvar color/emphasis           "#E5266A") ;; deep pink
(defvar color/emphasis/weak      "#FC9CBF") ;; weak deep pink
(defvar color/string-like        "#3CB371") ;; green

;; normal (gray)
(defvar color/active-strong      "#080808")
(defvar color/active             "#101010") ;; for foreground color
(defvar color/inactive           "#393939") ;; for foreground color, but not active
(defvar color/invert             "#393939") ;; for inverted background color
(defvar color/out-strong         "#666666") ;; kind of comment out, but strong
(defvar color/out                "#777777") ;; kind of comment out (removed from context)
(defvar color/fade-strong        "#A0A0A0")
(defvar color/popup-active       "#D0D0D0")
(defvar color/popup-inactive     "#E4E4E4")
(defvar color/popup-hide         "#F0F0F0")
(defvar color/inverted-active    "#F1F1F1") ;; for foreground color in inverted background color
(defvar color/fade               "#F2F2F2")
(defvar color/hide               "#FFFFFF") ;; for background color

;;; ---------------------------------------------------------------------------
;;; 背景/前景の設定
;;; ---------------------------------------------------------------------------

(set-foreground-color color/active)
(set-background-color color/hide)

;;; ---------------------------------------------------------------------------
;;; 構文の設定
;;; ---------------------------------------------------------------------------

;; 各構文要素の色/タイプ(normal/italic/bold)の設定
(defun set-face-app1 (attr-symbol color-name bold-param italic-param)
  (set-face-foreground attr-symbol color-name)
  (set-face-bold       attr-symbol bold-param)
  (set-face-italic     attr-symbol italic-param))

;; 各構文要素の色(foreground, background)/タイプ(normal/italic/bold)の設定
(defun set-face-app2 (attr-symbol color-fg color-bg bold italic)
  (set-face-foreground attr-symbol color-fg)
  (set-face-background attr-symbol color-bg)
  (set-face-bold       attr-symbol bold)
  (set-face-italic     attr-symbol italic))

;; coloring program
(set-face-app1 'font-lock-comment-delimiter-face color/out-strong  t   t)
(set-face-app1 'font-lock-comment-face           color/out         nil t)
(set-face-app1 'font-lock-doc-face               color/emphasis    nil t)
(set-face-app1 'font-lock-string-face            color/string-like t   nil)
(set-face-app1 'font-lock-keyword-face           color/main        t   nil)
(set-face-app1 'font-lock-builtin-face           color/main        nil nil)
(set-face-app1 'font-lock-function-name-face     color/secondary   t   nil)
(set-face-app1 'font-lock-variable-name-face     color/secondary   nil nil)
(set-face-app1 'font-lock-type-face              color/main        t   nil)
(set-face-app1 'font-lock-constant-face          color/emphasis    t   nil)
(set-face-app1 'font-lock-warning-face           color/emphasis    nil t)
(set-face-app1 'font-lock-preprocessor-face      color/main        nil nil)
(set-face-app1 'font-lock-negation-char-face     color/main        nil nil)

;;; region
(set-face-attribute 'region nil :background color/emphasis/weak)

;;; ---------------------------------------------------------------------------
;;; カーソル
;;; ---------------------------------------------------------------------------

(set-cursor-color color/emphasis)

;; (set-face-attribute 'hl-line nil :inherit nil :background color/fade)

;;; ---------------------------------------------------------------------------
;;; modeline
;;; ---------------------------------------------------------------------------

(custom-set-faces
 '(mode-line
   ((t (:background "#f0f0f0" :foreground nil
	:box nil))))
 '(mode-line-inactive
   ((t (:background "#ffffff" :foreground nil
	:box (:line-width 1 :color "#f0f0f0" :style nil))))))

;;; ---------------------------------------------------------------------------
;;; headerline
;;; ---------------------------------------------------------------------------
(custom-set-faces
 '(header-line
   ((t (:box (:line-width (4 . 4) :color "#333333")
	     :foreground "#f0f0f0" :background "#333333")))))

;;;---------------------------------------------------------------------------
;;; provide
;;;---------------------------------------------------------------------------
(provide 'color)
;;; color.el ends here
