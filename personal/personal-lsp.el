;;; personal-lsp.el --- LSP personal configuration
;;
;; Author: Jean Dupin

;; This file is not part of GNU Emacs

;;; Commentary:

;;; Code:

;; (require 'lsp-mode)

;; (use-package company-lsp
;;   :requires company
;;   :config
;;   (push 'company-lsp company-backends)

;;   ;; Disable client-side cache because the LSP server does a better job.
;;   (setq company-transformers nil
;;         company-lsp-async t
;;         company-lsp-cache-candidates nil))

;; (setq lsp-ui-doc-enable nil)


(use-package eglot
  :ensure t
  :defer t
  :hook (python-mode . eglot-ensure))

(provide 'personal-lsp)
;;; personal-lsp.el ends here
