;;; secondary.el --- packages
;;; Commentary:
;;;  package(優先以外)
;;; Code:


;;; ---------------------------------------------------------------------------
;;; ---------------------------------------------------------------------------
(use-package duplicate-thing)
(use-package comment-dwim-2)

;;; ---------------------------------------------------------------------------
;;; git gutter
;;; ---------------------------------------------------------------------------
(use-package git-gutter
  :init
  (global-git-gutter-mode t))
(use-package ibuffer-vc)

;;; ---------------------------------------------------------------------------
;;; ---------------------------------------------------------------------------
(use-package elec-pair
  :config
  (electric-pair-mode +1))
(use-package smartparens
  :hook (prog-mode . smartparens-mode))

;;; ---------------------------------------------------------------------------
;;; rainbow delimiters for programming modes
;;; ---------------------------------------------------------------------------
(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

;;; ---------------------------------------------------------------------------
;;; indentation guides
;;; ---------------------------------------------------------------------------
(use-package highlight-indent-guides
  :hook (prog-mode . highlight-indent-guides-mode)
  :config
  (setq highlight-indent-guides-method 'column))

;;; ---------------------------------------------------------------------------
;;; icon fonts
;;; ---------------------------------------------------------------------------
(use-package all-the-icons)

;;; ---------------------------------------------------------------------------
;;; modern themes
;;; ---------------------------------------------------------------------------
(use-package doom-themes
  :defer t
  :config
  (add-hook 'after-init-hook (lambda () (load-theme 'doom-one t))))

;;; ---------------------------------------------------------------------------
;;; ---------------------------------------------------------------------------
(use-package dashboard
  :config
  (setq dashboard-center-content t
        dashboard-startup-banner 'official
        dashboard-items '((recents  . 5)
                          (projects . 5)
                          (bookmarks . 5)))
  (dashboard-setup-startup-hook))
(use-package beacon
  :init (beacon-mode 1))
(use-package super-save
  :init (super-save-mode 1))

;;; ---------------------------------------------------------------------------
;;; smooth scrolling
;;; ---------------------------------------------------------------------------
(use-package good-scroll
  :init
  (good-scroll-mode +1))

;;; ---------------------------------------------------------------------------
;;; quick navigation
;;; ---------------------------------------------------------------------------
(use-package avy
  :bind ("M-s" . avy-goto-char))
(use-package ace-window
  :bind ("M-o" . ace-window))
(use-package expand-region
  :bind ("C-=" . er/expand-region))

;;; ---------------------------------------------------------------------------
;;; nicer org bullets
;;; ---------------------------------------------------------------------------
(use-package org-bullets
  :hook (org-mode . org-bullets-mode))

(use-package helpful)
(use-package vterm)

;;; ---------------------------------------------------------------------------
;;; snippet expansion
;;; ---------------------------------------------------------------------------
(use-package yasnippet
  :config
  (yas-global-mode 1))

;;; ---------------------------------------------------------------------------
;;; multiple cursors
;;; ---------------------------------------------------------------------------
(use-package multiple-cursors)

;;; ---------------------------------------------------------------------------
;;; environment integration
;;; ---------------------------------------------------------------------------
(use-package envrc
  :config
  (envrc-global-mode))

;;; ---------------------------------------------------------------------------
;;; project tree viewer
;;; ---------------------------------------------------------------------------
(use-package neotree
  :config
  (setq neo-theme 'icons))

;;; ---------------------------------------------------------------------------
;;; Enhanced dired
;;; ---------------------------------------------------------------------------
(use-package diredfl
  :hook (dired-mode . diredfl-mode))

(use-package all-the-icons-dired
  :hook (dired-mode . all-the-icons-dired-mode))

(use-package dired-open
  :after dired
  :custom
  (dired-open-extensions
   (if (eq system-type 'darwin)
       '(("png" . "open")
         ("jpg" . "open"))
     '(("png" . "xdg-open")
       ("jpg" . "xdg-open")))))

;;;---------------------------------------------------------------------------
;;; provide
;;;---------------------------------------------------------------------------
(provide 'secondary)
;;; secondary.el ends here
