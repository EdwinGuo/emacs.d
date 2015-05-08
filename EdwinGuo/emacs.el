(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'zenburn t)
(powerline-default-theme)

(setq debug-on-server t)
(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
(electric-pair-mode 1)
