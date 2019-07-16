;;; clojure-config.el --- Package configuration for clojure packages
;;; Commentary:
;;; Emacs clojure configuration --- Package configuration for clojure
;;; Code:

(defun setup-clojure-packages()
  (use-package clojure-mode
    :ensure t)

  (use-package cider
    :ensure t)

  (use-package clj-refactor
    :ensure t
    :config
    (clj-refactor-mode 1)
    (cljr-add-keybindings-with-prefix "C-c C-m")))

(provide 'clojure-config)

;;; clojure-config.el ends here
