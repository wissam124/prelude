;;; personal-ui.el --- Personal UI tweaks
;;
;; Author: Jean Dupin

;; This file is not part of GNU Emacs

;;; Commentary:

;;; Code:

;; remove scroll bar
(scroll-bar-mode -1)

;; smart mode line
(use-package smart-mode-line
  :ensure t
  :config
  (setq sml/no-confirm-load-theme t)
  (setq sml/theme nil)
  :hook (after-init . sml/setup))

;; default starting directory
(setq default-directory "~/")

(provide 'personal-ui)
;;; personal-ui.el ends here
