;;; customizations.el --- Configs and key maps for Emacs.
;;; Commentary:
;;; Configure Emacs --- Configs and key maps for Emacs.
;;;
;;; Code:

(set-face-attribute 'default nil
                    :family "Monaco"
                    :height 170
                    :weight 'normal
                    :width 'normal

(defun visual-config-modes()
  "Visual modes. Removes tool and menu bar,
removes scroll bar and display line numbers."
  (setq inhibit-startup-message t)
  (setq-default show-trailing-whitespace t)
  (tool-bar-mode -1)
  (menu-bar-mode -1)
  (scroll-bar-mode -1)
  (global-display-line-numbers-mode)
  (setq display-line-numbers-type 'relative)
  (show-paren-mode 1)
  (global-hl-line-mode))

(defun set-default-indentation()
  "Configures the default indentation (4 spaces)."
  (setq-default indent-tabs-mode nil)
  (setq-default tab-width 4)
  (setq indent-line-function 'insert-tab)
  (global-set-key (kbd "RET") 'newline-and-indent))

(defun enable-ido-mode()
  "Enables ido-mode."
  (setq-default ido-enable-flex-matching t)
  (setq-default ido-everyehere t)
  (ido-mode 1))

(defun beginning-of-line++()
  "Go to first character on a line."
  (interactive)
  (if (bolp)
	  (back-to-indentation)
	(beginning-of-line)))

(setq-default c-default-style "linux"
              c-basic-offset 4
              tab-width 4
              indent-tabs-mode nil)

(dolist (hook '(text-mode-hook))
  (add-hook hook (lambda () (flyspell-mode 1))))

(add-hook 'prog-mode-hook 'flyspell-prog-mode)

(dolist (hook '(change-log-mode-hook log-edit-mode-hook))
  (add-hook hook (lambda () (flyspell-mode -1))))

(setq user-full-name "Edison Aguiar de S. Neto"
      user-mail-address "edison.aguiar.neto@gmail.com")

(visual-config-modes)
(set-default-indentation)
(enable-ido-mode)

(add-hook 'term-mode-hook (lambda ()
                            (setq show-trailing-whitespace nil)))

;; Autoclose brackets, quotes.
(electric-pair-mode 1)

;; Sets zsh to be used as shell.
(setq explicit-shell-file-name "/usr/bin/zsh")

;; Sets ibuffer as default.
(defalias 'list-buffers 'ibuffer)

(global-set-key (kbd "C-a") 'beginning-of-line++)

;; Configure js-mode for avro schema defition files
(add-to-list 'auto-mode-alist '("\\.avsc\\'" . js-mode))

(defun set-fifteen-minute-timer()
  (interactive)
  (org-timer-set-timer "00:15:00"))

(defun set-five-minute-timer()
  (interactive)
  (org-timer-set-timer "00:05:00"))

;;; customizations.el ends here
