;;; personal-sql.el --- SQL personal configuration
;;
;; Author: Jean Dupin

;; This file is not part of GNU Emacs

;;; Commentary:

;;; Code:

;; Postgresql configuration
(setq sql-postgres-login-params
      '((user :default "postgres")
        (database :default "postgres")
        (server :default "localhost")
        (port :default 5432)))

(setq sql-postgres-program "/Library/PostgreSQL/10/bin/psql")

;; sqlup-mode configuration
;; Capitalize keywords in SQL mode
(add-hook 'sql-mode-hook 'sqlup-mode)
;; Capitalize keywords in an interactive session (e.g. psql)
(add-hook 'sql-interactive-mode-hook 'sqlup-mode)
;; Set a global keyword to use sqlup on a region
(global-set-key (kbd "C-c u") 'sqlup-capitalize-keywords-in-region)

;; sql indentation from sqlind
(add-hook 'sql-mode-hook 'sqlind-minor-mode)

(provide 'personal-sql)
;;; personal-sql.el ends here
