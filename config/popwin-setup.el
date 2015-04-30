(require-package 'popwin)

;; popwin
(setq display-buffer-function 'popwin:display-buffer)
(setq popwin:special-display-config
      '(("*Help*"  :height 30 :stick t)
        ("*Completions*" :noselect t)
        ("*compilation*" :noselect t)
        ("*Messages*" :height 30)
        ("*Occur*" :noselect t)
        ("\\*Slime Description.*" :noselect t :regexp t :height 30)
        ("\\*Slime Inspector.*" :regexp t :height 30)
        ("*sldb.*":regexp t :height 30)
        ("*magit-commit*" :noselect t :height 40 :width 80)
        ("*magit-diff*" :noselect t :height 40 :width 80)
        ("*magit-edit-log*" :noselect t :height 15 :width 80)
        ("*Ido Completions*" :noselect t :height 30)
        ("*eshell*" :height 30)
        ("*shell*" :height 30)
        ("\\*ansi-term\\*.*" :regexp t :height 30)
        (".*overtone.log" :regexp t :height 30)
        ("*gists*" :height 30)
        ("*Kill Ring*" :height 30)
        ("*Compile-Log*" :height 30)
        (" *auto-async-byte-compile*" :height 14 :position bottom)
        ("*VC-log*" :height 10 :position bottom)

        ("*nREPL doc*" :height 30 :position bottom)
        ("*nREPL error*" :height 30 :position bottom)
        ("*nREPL inspect*" :height 20 :position bottom)
        ("*nREPL Macroexpansion*" :height 30 :position bottom)
        ("nREPL-tmp" :height 30 :position bottom)))

(defun live-show-messages ()
  (interactive)
  (popwin:display-buffer "*Messages*"))
