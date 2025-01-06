;;; personal-shell.el --- Shell personal configuration
;;
;; Author: Jean Dupin

;; This file is not part of GNU Emacs

;;; Commentary:

;;; Code:

;; Use eshell prompt extras
(use-package eshell-prompt-extras
  :ensure t
  :config
  (with-eval-after-load "esh-opt"
  (autoload 'epe-theme-lambda "eshell-prompt-extras")
  (setq eshel-lhighlight-prompt t
        eshell-prompt-function 'epe-theme-lambda)))


(provide 'personal-shell)
;;; personal-shell.el ends here
