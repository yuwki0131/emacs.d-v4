;;; lang.el --- packages
;;; Commentary:
;;;  各言語向け設定
;;; Code:

(use-package yaml-mode
  :config
  (add-hook 'yaml-mode-hook
	    (lambda ()
              (setq indent-tabs-mode nil)
              (setq yaml-indent-offset 2))))

;;;---------------------------------------------------------------------------
;;; provide
;;;---------------------------------------------------------------------------
(provide 'lang)
;;; lang.el ends here
