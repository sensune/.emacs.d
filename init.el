;;关闭欢迎页
(setq inhibit-splash-screen t)
;;禁止自动备份
(setq make-backup-files nil)
(add-to-list 'load-path "~/.emacs.d/themes")
(require 'autothemer)
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'gruvbox t)

;; Setting English Font
(set-face-attribute
   'default nil :font "Monaco 11")
;; Setting Chinese Font
(dolist (charset '(kana han symbol cjk-misc bopomofo))
    (set-fontset-font (frame-parameter nil 'font)
		                  charset
				              (font-spec :family "Microsoft Yahei" :size 14)))
