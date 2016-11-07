;;(require-package 'grep-a-lot)
(require 'grep-a-lot)
(grep-a-lot-setup-keys)

;; customize find-grep
(setq grep-find-command "find . -name 'target' -prune -o -name 'webapp*assets' -prune -o -name '.bundle' -prune -o -path '*/tmp/*' -prune -o -name 'public' -prune -o -name 'cache' -prune -o -name '*' ! -name '*~' ! -name 'old-*.js' ! -name 'old-*.css' ! -name 'ext*.js' ! -name 'yui*.js' ! -name '*.dll' ! -name '*.pdb' ! -name 'development.log' -type f -print0 | xargs -0 grep -H -n ")

(provide 'init-grep-a-lot)
