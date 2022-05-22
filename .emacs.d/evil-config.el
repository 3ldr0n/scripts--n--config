;;; evil-config.el --- Package configuration for evil packages
;;; Commentary:
;;; Emacs Evil configuration --- Package configuration for Emacs evil
;;; Code:

(use-package evil
  :ensure t
  :init
  (evil-mode 1)
  :config
  (evil-set-initial-state 'term-mode 'emacs)
  (with-eval-after-load 'evil
    (define-key evil-normal-state-map (kbd "M-.") nil)
    (define-key evil-normal-state-map (kbd "C-u") 'evil-scroll-up)))

(use-package evil-matchit
  :ensure t
  :config
  (global-evil-matchit-mode 1))

(use-package evil-surround
  :ensure t
  :config
  (global-evil-surround-mode 1))

(provide 'evil-config)

;;; evil-config.el ends here
