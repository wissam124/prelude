;;; personal-macos.el --- OSX personal configuration
;;
;; Author: Jean Dupin

;; This file is not part of GNU Emacs

;;; Commentary:

;;; Code:

;; Set Righ Option to none so that macOS can produce special characters.
;; This only applies in GUI emacs
(when (and (eq system-type 'darwin)
           (eq window-system 'ns))
  (setq mac-option-modifier 'meta)
  (setq ns-right-alternate-modifier 'none))


(provide 'personal-macos)
;;; personal-macos.el ends here
