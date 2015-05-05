(require-package 'clojure-quick-repls)

(setq clojure-quick-repls-cljs-setup
      "(require 'cljs.repl.browser)
       (require 'cemerick.piggieback)
       ")

(provide 'init-clojure-quick-repls)
