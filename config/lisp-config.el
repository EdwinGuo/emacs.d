(require-package 'auto-indent-mode)

(after 'lisp-mode

  (defun lisp-paren-setup ()
    (paredit-mode +1)
    (show-paren-mode))

  (defun lisp-mode-setup ()
    (auto-indent-mode)
    (whitespace-mode)
    (lisp-paren-setup))

  (add-hook 'lisp-mode-hook 'lisp-mode-setup)
  (add-hook 'emacs-lisp-mode-hook 'lisp-mode-setup)
  (add-hook 'lisp-interaction-mode-hook 'lisp-paren-setup))