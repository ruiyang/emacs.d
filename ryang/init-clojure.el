(require-package 'cider)
(require-package 'clj-refactor)
(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)
(setq cider-auto-select-error-buffer t)

(require 'clj-refactor)

(defun my-clojure-mode-hook ()
  (clj-refactor-mode 1)
  ;; This choice of keybinding leaves cider-macroexpand-1 unbound
  (cljr-add-keybindings-with-prefix "C-c C-m"))

(add-hook 'clojure-mode-hook #'my-clojure-mode-hook)

(provide 'init-clojure)
