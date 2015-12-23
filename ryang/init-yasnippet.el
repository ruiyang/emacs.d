(require-package 'yasnippet)

(require 'yasnippet)
(yas-global-mode 1)

(setq yas-snippet-dirs
      '("~/.emacs.d/ryang/snippets"
        ))

(yas-reload-all)
