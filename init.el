;;; package --- emacs init.el
;;; Commentary:
;;;  Emacs init.el root
;;; Code:

;; when starting up

;; Load configuration from the "alter" directory relative to this file
(add-to-list 'load-path
             (expand-file-name
              "alter"
              (file-name-directory (or load-file-name default-directory))))

(require 'primary)
(require 'secondary)
(require 'builtin)
(require 'font)
(require 'xolor)
(require 'appearance)
(require 'hooks)
(require 'lang)
(require 'key)
(require 'extention)

'(setq default-directory "~/")

;;; position

(setq initial-frame-alist
      '((top . 50)
        (left . 200)
        (width . 100)
        (height . 55)
        ))

;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(duplicate-thing nix-ts-mode nixpkgs-fmt ## nix-mode evil magit wgrep use-package path-headerline-mode doom-modeline counsel company)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
