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
  (ledger-binary-path "~/Syncthing/finance/script/hledger.sh")
  (ledger-mode-should-check-version nil)  ; Stop 'ledger' version checks errors
  (ledger-report-auto-width nil)          ; Fixes the --columns error
  (ledger-report-links-in-register nil)   ; Fixes the --prepend-format error
  (ledger-default-date-format ledger-iso-date-format)

  ;; Use chart of accounts defined in external file
  (ledger-accounts-file "~/Syncthing/finance/accounts.journal")

  ;; Visuals
  (add-hook 'ledger-mode-hook #'company-mode)

  ;; Clean reports with colors
  (ledger-report-native-highlighting-arguments '("--color=always"))

  ;; Remove prompt for xact
  (ledger-add-transaction-prompt-for-text nil))


(defun my/ledger-accounts-list-multi-file ()
  "Replacement for `ledger-accounts-list' that handles lists of files."
  (let ((files (if (listp ledger-accounts-file)
                   ledger-accounts-file
                 (list ledger-accounts-file))))
    ;; Check if the first element of our list is actually a string/path
    (if (and (car files) (stringp (car files)))
        (with-temp-buffer
          (dolist (f files)
            (let ((expanded-f (expand-file-name f)))
              (if (file-exists-p expanded-f)
                  (insert-file-contents expanded-f)
                (message "Ledger-mode warning: %s not found" expanded-f))))
          (ledger-accounts-list-in-buffer))
      ;; Fallback to the original logic: scan the current buffer
      (ledger-accounts-list-in-buffer))))

;; This tells Emacs: "When someone calls ledger-accounts-list,
;; use my function instead."
(advice-add 'ledger-accounts-list :override #'my/ledger-accounts-list-multi-file)


(use-package flycheck-ledger
  :ensure t
  :after (ledger-mode flycheck)
  :hook (ledger-mode . flycheck-mode))


(provide 'personal-ledger)
;;; personal-ledger.el ends here
