;;; personal-lsp.el --- LSP personal configuration
;;
;; Author: Jean Dupin

;; This file is not part of GNU Emacs

;;; Commentary:

;;; Code:

;; eglot
(use-package eglot
  :ensure t
  :defer t
  :hook (python-mode . eglot-ensure))

(provide 'personal-lsp)
;;; personal-lsp.el ends here
