;;; personal-org.el --- Org personal configuration
;;
;; Author: Jean Dupin

;; This file is not part of GNU Emacs

;;; Commentary:

;;; Code:

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

(provide 'personal-org)
;;; personal-org.el ends here
