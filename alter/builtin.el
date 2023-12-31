;;; package --- builtin.el
;;; Commentary:
;;;  ビルトイン設定
;;; Code:

;; ツールバー表示設定
(tool-bar-mode -1)

;; メニューバー表示設定 (Linux Mint/Cinnamonだと綺麗な表示)
(menu-bar-mode -1)

;; スクロールバー表示設定
(scroll-bar-mode -1)

;; 画像ファイル表示
(auto-image-file-mode t)

(setq
 ;; スタートメッセージを非表示
 inhibit-startup-message t

 ;; scratchの初期のメッセージ消去
 initial-scratch-message nil

 ;; backupfile(*.~) つくらない他
 auto-save-default nil
 make-backup-files nil
 backup-inhibited nil
 delete-auto-save-files nil
 auto-save-list-file-name nil
 auto-save-list-file-prefix nil
 create-lockfiles nil

 ;; file名の補完で大文字小文字を区別しない
 completion-ignore-case t

 ;; ファイル読込補完、大文字/小文字無視
 read-file-name-completion-ignore-case t

 ;; 最終行に1行挿入
 require-final-newline t

 ;; 再帰的ミニバッファ
 enable-recursive-minibuffers t

 ;; elcとelで新しい方のファイルを読み込む(byte compile忘れ対策)
 load-prefer-newer t

 ;; 巨大なファイルを開く時に警告しない
 large-file-warning-threshold nil

 ;; Do not ask for confirm when killing processes
 confirm-kill-processes nil

 ;; スクロール時のカーソル位置を維持
 scroll-preserve-screen-position t

 ;; Make Tab complete if the line is indented
 tab-always-indent 'complete
 
 ;; tab挿入モードを無効化(タブの代わりにスペースを使用)
 indent-tabs-mode nil

 ;; killringについて
 kill-ring-max 30

 ;; killringでkillされる前にclipboardにコピーする
 save-interprogram-paste-before-kill t
)

;; 再帰的ミニバッファの深さを表示
(minibuffer-depth-indicate-mode t)

;; from yes-or-no to y-or-n
(fset 'yes-or-no-p 'y-or-n-p)

;; disable
(recentf-mode nil)

;;; ---------------------------------------------------------------------------
;;; エラー、不具合対策
;;; ---------------------------------------------------------------------------

;; CHECKME: ‘isearch-word’ is an obsolete variable (as of 25.1)対策
(defvar search-default-regexp-mode nil)

;; Rubyでフリーズする問題の対策
(setq ruby-insert-encoding-magic-comment nil)

;;; ---------------------------------------------------------------------------
;;; provide
;;; ---------------------------------------------------------------------------
(provide 'builtin)
;;; builtin.el ends here

