;;; personal-org.el --- Org personal configuration
;;
;; Author: Jean Dupin

;; This file is not part of GNU Emacs

;;; Commentary:

;;; Code:

;; org-mode
(add-hook 'org-mode-hook #'turn-on-org-cdlatex)

;; org-roam
(use-package org-roam
  :ensure t
  :defer t
  :config
  (setq org-roam-directory
        (cond
         ((member (system-name) '("VNYCTR0535"  "VELSTRA10290")) "n:/org-roam")
         (t "~/Syncthing/org-roam")))
  (org-roam-db-autosync-mode))


;; anki-editor
(use-package anki-editor
  :ensure t
  :after org)

(provide 'personal-org)
;;; personal-org.el ends here
