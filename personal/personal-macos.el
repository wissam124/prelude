;;; personal-macos.el --- OSX personal configuration
;;
;; Author: Jean Dupin

;; This file is not part of GNU Emacs

;;; Commentary:

;;; Code:

;; Allow hash to be entered
(when (memq window-system '(mac ns))
  (global-set-key (kbd "M-3")
                  (lambda () (interactive) (insert "£"))))

(provide 'personal-macos)
;;; personal-macos.el ends here
