;;关闭欢迎页
(setq inhibit-splash-screen t)
;;禁止自动备份
(setq make-backup-files nil)
(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(package-initialize)

(setq-default auto-save-timeout 15) ; 15秒无动作,自动保存
(setq-default auto-save-interval 50) ; 100个字符间隔, 自动保存

;;安装use-package插件
(unless (package-installed-p 'use-package)
(package-refresh-contents)
(package-install 'use-package))

;;安装go-mode
(use-package go-mode
  :ensure t
  :mode (("\\.go\\'" . go-mode))
  :hook ((before-save . gofmt-before-save))
  )
