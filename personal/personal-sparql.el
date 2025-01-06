;;; prelude-sparql.el --- sparql personal configuration.
;;
;; Author: Jean Dupin

;; This file is not part of GNU Emacs.

;; Commentary:

;;; Code:

(autoload 'sparql-mode "sparql-mode.el"
  "Major mode for editing SPARQL files" t)
(add-to-list 'auto-mode-alist '("\\.sparql$" . sparql-mode))
(add-to-list 'auto-mode-alist '("\\.rq$" . sparql-mode))

(provide 'personal-sparql)
;;; personal-sparql.el ends here
