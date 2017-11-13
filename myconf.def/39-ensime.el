(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

(defun showType ()
    (interactive)
  "Show error message at point by Eldoc."
  (setq-local eldoc-documentation-function
              #'(lambda ()
                  (when (ensime-connected-p)
                    (let ((type (ensime-type-at-point)))
                      (and type (not (string= type "")) type)))))
  (eldoc-mode +1))

(add-hook 'ensime-mode-hook #'scala/enable-eldoc)


(define-key scala-mode-map "\C-i" 'ensime-type-at-point)

;;import
;;(define-key global-map "\C-:" 'ensime-import-type-at-point)

;;
(define-key scala-mode-map "\C-c\C-ce" 'ensime-print-errors-at-point)
