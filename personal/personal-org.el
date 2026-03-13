;;; personal-org.el --- Org personal configuration
;;
;; Author: Jean Dupin

;; This file is not part of GNU Emacs

;;; Commentary:

;;; Code:

;; org-mode
(defun my/org-setup ()
  (setq fill-column 80)
  (auto-fill-mode 1)
  (when (fboundp 'turn-on-org-cdlatex) (turn-on-org-cdlatex)))

(use-package org
  :ensure nil   ; "nil" because org-mode is built-in; don't try to download it
  :hook (org-mode . my/org-setup)
  :custom
  ; indentation for the content of a source code block
  (org-edit-src-content-indentation 0)
  (org-preview-latex-default-process 'dvisvgm))

;; org-roam
(use-package org-roam
  :ensure t
  :custom
  (org-roam-directory (file-truename "~/Syncthing/org-roam/"))
  :bind (("C-c n l" . org-roam-buffer-toggle)
         ("C-c n f" . org-roam-node-find)
         ("C-c n i" . org-roam-node-insert))
  :config
  (org-roam-db-autosync-mode))

;; org-babel
(org-babel-do-load-languages
 'org-babel-load-languages
 '((shell . t)))  ; This enables shell/sh execution

;; org-download
(use-package org-download
  :ensure t)
(require 'org-download)
(setq-default org-download-image-dir "./images")
(setq-default org-download-heading-lvl nil) ; Keeps filenames simpler

;; anki-editor
(use-package anki-editor
  :ensure t
  :after org)

(use-package anki-editor-view
  :ensure t
  :custom
  (anki-editor-view-files (list (file-truename "~/Syncthing/anki_decks/"))))

(setq org-anki-model-fields
      '(("basic_with_refs" "Front"  "Back")
        ("cloze_with_refs" "Text" "Extra" "Source" "Section")
        ("Basic-Auto-Latex (with refs)" "ID" "Front" "Back" "Extra" "Source" "Section")))

(provide 'personal-org)
;;; personal-org.el ends here
