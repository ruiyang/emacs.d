(add-to-list 'auto-mode-alist '("buildfile" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.hbs$" . web-mode))
(set-default 'truncate-lines nil)

(setq backup-directory-alist `(("." . "~/.saves")))
(setq auto-save-file-name-transforms
      `((".*" "~/.saves" t)))

(require 'init-my-default-packages)
(require 'my-custom)

;; (require 'solarized-theme)
;; (load-theme 'solarized-dark t)

(set-face-attribute 'default nil :height 150)
(color-theme-sanityinc-solarized-dark)

(require 'my-func)
(require 'my-key-bindings)
(require 'init-ffip)
(require 'init-revive)

(require 'init-elfeed)
(require 'setup-tab)

(require 'init-ggtags)
(require 'setup-cider)
(require 'init-ido-vertical)
;; (require 'init-mozrepl)
(require 'init-smartparens)
(require 'clojure-quick-repls)

(setenv "TMPDIR" "/tmp")
(put 'erase-buffer 'disabled nil)

(provide 'ryang-init)
