(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'zenburn t)
(powerline-default-theme)

(setq debug-on-server t)
(push "/usr/local/Cellar/scala/2.11.6/bin" exec-path)
(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
(electric-pair-mode 1)
