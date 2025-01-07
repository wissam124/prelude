;;; personal-programming.el --- Programming personal configuration
;;
;; Author: Jean Dupin

;; This file is not part of GNU Emacs

;;; Commentary:

;;; Code:
(use-package yasnippet
  :ensure t
  :hook
  (python-mode . yas-minor-mode)
  (org-mode . yas-minor-mode))
