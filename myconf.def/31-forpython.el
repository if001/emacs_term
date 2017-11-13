;; (eval-after-load "company"
;;   '(add-to-list 'company-backends 'company-anaconda))

;; (add-hook 'python-mode-hook 'anaconda-mode)

;; (eval-after-load "company"
;;  '(add-to-list 'company-backends '(company-anaconda :with company-capf)))

;;(require 'ac-python)


;; ;; コーディング規約設定
;; (require 'py-autopep8)
;; ; バッファ全体のコード整形
;; (define-key python-mode-map (kbd "C-c F") 'py-autopep8)

;; ; 選択リジョン内のコード整形
;; (define-key python-mode-map (kbd "C-c f") 'py-autopep8-region)

;; ;; 保存時にバッファ全体を自動整形する
;; (add-hook 'before-save-hook 'py-autopep8-before-save)



