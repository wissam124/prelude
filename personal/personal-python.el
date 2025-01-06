;;; personal-python.el --- Python personal configuration
;;
;; Author: Jean Dupin

;; This file is not part of GNU Emacs

;;; Commentary:

;;; Code:

;; Set python3 as default python interpreter
(setq python-shell-interpreter "~/.pyenv/versions/3.9.12/bin/python3")

;; Set IPython as default python interpreter
(setq python-shell-interpreter "ipython")
      ;; python-shell-interpreter-args "--simple-prompt -c exec('__import__(\\'readline\\')') -i")

(provide 'personal-python)
;;; personal-python.el ends here
