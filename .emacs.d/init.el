;;; init.el --- Initialization file for Emacs
;;; Commentary:
;;; Emacs Startup File --- initialization for Emacs

;;; Code:


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)




;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("763bf89898a06b03f7b65fbc29857a1c292e4350246093702fdbd6c4e46e2cf0" "c71fd8fbda070ff5462e052d8be87423e50d0f437fbc359a5c732f4a4c535c43" "78e6be576f4a526d212d5f9a8798e5706990216e9be10174e3f3b015b8662e27" "3a1a6a9cbff383a7122f7b2e5be7ca3c3951cab4705d2303c887368693c75fd3" "f0f5bfda176875f70299b2a3a07e778f23b8af81defe3bc40babd0a85f88d411" "95b0bc7b8687101335ebbf770828b641f2befdcf6d3c192243a251ce72ab1692" default))
 '(elfeed-feeds
   '("https://without.boats/index.xml" "http://peter.eisentraut.org/feed.xml" "https://feeds.feedburner.com/martinkl" "https://nullprogram.com/feed/" "https://rachelbythebay.com/w/atom.xml" "https://jvns.ca/atom.xml"))
 '(package-selected-packages
   '(yasnippet yaml-mode which-key web-mode terraform-mode telephone-line rustic python-isort python-black pyimport psession protobuf-mode pet org-superstar monokai-theme ivy-xref hl-todo highlight-indent-guides go-mode flx fish-mode exec-path-from-shell evil-surround evil-matchit evil-collection elfeed dockerfile-mode diff-hl deadgrep dashboard counsel company ansible all-the-icons))
 '(pdf-latex-command "xelatex")
 '(safe-local-variable-values '((flycheck-checker . flake8) (flycheck-checker . mypy))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(load "~/.emacs.d/main.el")
