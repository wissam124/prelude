;;; personal-editor.el --- Editor personal configuration
;;
;; Author: Jean Dupin

;; This file is not part of GNU Emacs

;;; Commentary:

;;; Code:
(use-package multiple-cursors
  :ensure t
  :bind (("C-S-c C-S-c" . mc/edit-lines)))

(setq dired-vc-rename-file t)


(provide 'personal-editor)
;;; personal-editor.el ends here
