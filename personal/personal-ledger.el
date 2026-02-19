;;; personal-ledger.el --- Ledger personal configuration
;;
;; Author: Jean Dupin

;; This file is not part of GNU Emacs

;;; Commentary:

;;; Code:

(use-package ledger-mode
  :ensure t
  :mode ("\\.journal\\'" "\\.hledger\\'")
  :custom
  ;; Fix compatability issues with ledger
  (ledger-binary-path "~/Syncthing/hledger/script/hledger.sh")
  (ledger-mode-should-check-version nil)  ; Stop 'ledger' version checks errors
  (ledger-report-auto-width nil)          ; Fixes the --columns error
  (ledger-report-links-in-register nil)   ; Fixes the --prepend-format error
  (ledger-default-date-format ledger-iso-date-format)

  ;; Use chart of accounts defined in external file
  (ledger-accounts-file "~/Syncthing/hledger/accounts.journal")

  ;; Visuals
  (add-hook 'ledger-mode-hook #'company-mode)

  ;; Clean reports with colors
  (ledger-report-native-highlighting-arguments '("--color=always")))

(provide 'personal-ledger)
;;; personal-ledger.el ends here
