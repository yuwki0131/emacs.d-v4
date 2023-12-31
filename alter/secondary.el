;;; secondary.el --- packages
;;; Commentary:
;;;  package(優先以外)
;;; Code:


;;; ---------------------------------------------------------------------------
;;; duplicate lines
;;; ---------------------------------------------------------------------------
(use-package duplicate-thing
  :config
  (global-set-key (kbd "\C-a\C-d") 'duplicate-thing))

;;;---------------------------------------------------------------------------
;;; provide
;;;---------------------------------------------------------------------------
(provide 'secondary)
;;; secondary.el ends here
