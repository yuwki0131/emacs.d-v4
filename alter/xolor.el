;;; xolor.el --- packages
;;; Commentary:
;;;  色設定
;;;  色を調べるときは、M-x list-faces-display
;;; Code:
(require 'color)

;;; ---------------------------------------------------------------------------
;;; 色設定
;;; ---------------------------------------------------------------------------
;; colored
(defvar v/main          "#0997B6") ;; darkcyan
(defvar v/secondary     "#FF4C00") ;; orange
(defvar v/emphasis      "#E5266A") ;; deep pink
(defvar v/emphasis/weak "#FC9CBF") ;; weak deep pink
(defvar v/string-like   "#3CB371") ;; green

;; gray scale
(defvar v/foreground     "#101010") ;; for foreground color
(defvar v/background/inv "#333333") ;; for inverted background color
(defvar v/out-strong     "#666666") ;; comment out, but strong
(defvar v/out            "#777777") ;; comment out (removed from context)
(defvar v/foreground/inv "#E0E0E0") ;; inverted foreground
(defvar v/focus          "#F0F0F0") ;; for focus
(defvar v/background     "#FFFFFF") ;; for background color

;;; ---------------------------------------------------------------------------
;;; 背景/前景の設定
;;; ---------------------------------------------------------------------------
(set-foreground-color v/foreground)
(set-background-color v/background)

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
(set-face-app1 'font-lock-comment-delimiter-face v/out-strong  t   t)
(set-face-app1 'font-lock-comment-face           v/out         nil t)
(set-face-app1 'font-lock-doc-face               v/emphasis    nil t)
(set-face-app1 'font-lock-string-face            v/string-like t   nil)
(set-face-app1 'font-lock-keyword-face           v/main        t   nil)
(set-face-app1 'font-lock-builtin-face           v/main        nil nil)
(set-face-app1 'font-lock-function-name-face     v/secondary   t   nil)
(set-face-app1 'font-lock-variable-name-face     v/secondary   nil nil)
(set-face-app1 'font-lock-type-face              v/main        t   nil)
(set-face-app1 'font-lock-constant-face          v/emphasis    t   nil)
(set-face-app1 'font-lock-warning-face           v/emphasis    nil t)
(set-face-app1 'font-lock-preprocessor-face      v/main        nil nil)
(set-face-app1 'font-lock-negation-char-face     v/main        nil nil)

;;; ---------------------------------------------------------------------------
;;; region
;;; ---------------------------------------------------------------------------
(set-face-attribute
 'region nil :background v/emphasis/weak)

;;; ---------------------------------------------------------------------------
;;; current line
;;; ---------------------------------------------------------------------------
(custom-set-faces
 `(hl-line ((t (:background ,v/focus)))))

;;; ---------------------------------------------------------------------------
;;; cursor
;;; ---------------------------------------------------------------------------
(set-cursor-color v/emphasis)

;;; ---------------------------------------------------------------------------
;;; modeline
;;; ---------------------------------------------------------------------------
(custom-set-faces
 `(mode-line
   ((t (:background ,v/focus :foreground nil
	:box nil))))
 `(mode-line-inactive
   ((t (:background ,v/background :foreground nil
	:box (:line-width 1 :color ,v/focus :style nil))))))

;;; ---------------------------------------------------------------------------
;;; headerline
;;; ---------------------------------------------------------------------------
(custom-set-faces
 `(header-line
   ((t (:box
	(:line-width (4 . 4) :color ,v/background/inv)
	:foreground ,v/foreground/inv
	:background ,v/background/inv)))))

;;; ---------------------------------------------------------------------------
;;; minibuffer
;;; ---------------------------------------------------------------------------
(custom-set-faces
 `(minibuffer-prompt ((t (:foreground ,v/main :weight bold)))))

;;; ---------------------------------------------------------------------------
;;; git-gutter
;;; ---------------------------------------------------------------------------
(custom-set-faces
 `(git-gutter:added
   ((t (:foreground ,v/main          :background ,v/main))))
 `(git-gutter:deleted
   ((t (:foreground ,v/secondary     :background ,v/secondary))))
 `(git-gutter:modified
   ((t (:foreground ,v/emphasis/weak :background ,v/emphasis/weak)))))

;;; ---------------------------------------------------------------------------
;;; counsel/ivy
;;; ---------------------------------------------------------------------------
(custom-set-faces
 `(ivy-current-match
   ((t (:background ,v/emphasis/weak :foreground ,v/main :underline nil))))
 `(ivy-minibuffer-match-face-1 ((t (:foreground ,v/secondary))))
 `(ivy-minibuffer-match-face-2 ((t (:foreground ,v/emphasis))))
 `(ivy-minibuffer-match-face-3 ((t (:foreground ,v/main))))
 `(ivy-minibuffer-match-face-4 ((t (:foreground ,v/string-like))))
 `(ivy-subdir ((t (:foreground ,v/main))))
 ;; '(ivy-confirm-face ((t (:foreground "green"))))
 ;; '(ivy-match-required-face ((t (:foreground "red"))))
 ;; '(ivy-org ((t (:foreground "red"))))
 '(ivy-highlight-face ((t (:foreground "magenta"))))
 )

;;; ---------------------------------------------------------------------------
;;; company
;;; ---------------------------------------------------------------------------
(custom-set-faces
 `(company-tooltip
   ((t (:foreground ,v/foreground/inv :background ,v/background/inv))))
 `(company-scrollbar-bg
   ((t (:background ,v/background/inv))))
 `(company-scrollbar-fg
   ((t (:background ,v/foreground/inv))))
 `(company-tooltip-selection
   ((t (:foreground ,v/secondary :background ,v/focus))))
 `(company-tooltip-common
   ((t (:foreground ,v/emphasis))))
 `(company-preview
   ((t (:background ,v/background/inv :foreground ,v/foreground/inv))))
 `(company-preview-common
   ((t (:foreground ,v/foreground/inv)))))

;;; ---------------------------------------------------------------------------
;;; swiper/ivy
;;; ---------------------------------------------------------------------------
(custom-set-faces
 `(swiper-match-face-2
   ((t (:background
	,v/emphasis/weak
	:foreground
	,v/foreground
	:weight bold)))))

;;;---------------------------------------------------------------------------
;;; provide
;;;---------------------------------------------------------------------------
(provide 'xolor)
;;; xolor.el ends here
