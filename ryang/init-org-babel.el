(require 'org)
(require 'ob-clojure)

(setq org-babel-clojure-backend 'cider)
(require 'cider)

(defun my-org-confirm-babel-evaluate (lang body)
  (not (string= lang "clojure")))
(setq org-confirm-babel-evaluate 'my-org-confirm-babel-evaluate)

(provide 'init-org-babel)
