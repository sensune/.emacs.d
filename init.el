;;关闭欢迎页
(setq inhibit-splash-screen t)
;;禁止自动备份
(setq make-backup-files nil)
(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(package-initialize)
