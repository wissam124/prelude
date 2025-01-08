;;; personal-programming.el --- Programming personal configuration
;;
;; Author: Jean Dupin

;; This file is not part of GNU Emacs

;;; Commentary:

;;; Code:
;
;; yasnippet
(use-package uuidgen
  :ensure t
  :defer t)

(use-package yasnippet
  :ensure t
  :hook
  ((emacs-lisp-mode
    org-mode
    python-mode
    text-mode) . yas-minor-mode-on))


(use-package yasnippet-snippets
  :ensure t)
