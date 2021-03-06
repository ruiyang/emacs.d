;; (require-package 'find-file-in-project)
(require-package 'find-file-in-project)
(require 's)

;; No need to be stingy
(setq ffip-limit 8192)
(setq ffip-full-paths t)
(setq ffip-project-file '(".emacs-project" ".git"))

(setq ffip-patterns
      '("*"))

(setq ffip-prune-patterns
      '("node_modules"
        "target"
        "overlays"
        "build"
        "vendor"
        "\.git"
        "/tmp/"
        "\.idea"
        "\.gradle"))

(provide 'init-ffip)
