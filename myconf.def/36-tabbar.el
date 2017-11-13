;;-------------------------------------------------------------------------;;
;;タブ周りの設定
;;-------------------------------------------------------------------------;;

(require 'tabbar)
(tabbar-mode 1)

;; (when (require 'tabbar nil t)
;;   (tabbar-mode))

;; 例: 全バッファを一つのグループにしまう
(setq tabbar-buffer-groups-function (lambda () (list "Buffers")))


;; タブ上でマウスホイールを使わない
(tabbar-mwheel-mode nil)
;; グループを使わない
(setq tabbar-buffer-groups-function nil)
;; 左側のボタンを消す
(dolist (btn '(tabbar-buffer-home-button
               tabbar-scroll-left-button
               tabbar-scroll-right-button))
  (set btn (cons (cons "" nil)
                 (cons "" nil))))
;; 色設定
(set-face-attribute ; バー自体の色
  'tabbar-default nil
   ;; :background "grey30"
   :background "grey25"
   ;; :family "M+ 2p"
   :family "Ricty Diminished"
   :height 0.9)

(set-face-attribute ; アクティブなタブ
  'tabbar-selected nil
   :background "SkyBlue"
   :foreground "white"
   :foreground "grey30"
   ;; :weight 'bold
   :box nil)
(set-face-attribute ; 非アクティブなタブ
  'tabbar-unselected nil
   :background "grey30"
   :foreground "white"
   :family "Ricty Diminished"
   :box nil)


(defun my-tabbar-buffer-list ()
  (delq nil
        (mapcar #'(lambda (b)
                    (cond
                     ;; Always include the current buffer.
                     ((eq (current-buffer) b) b)
                     ((buffer-file-name b) b)
                     ((char-equal ?\  (aref (buffer-name b) 0)) nil)
		     ((equal "*scratch*" (buffer-name b)) b) ; *scratch*バッファは表示する
		     ((char-equal ?* (aref (buffer-name b) 0)) nil) ; それ以外の * で始まるバッファは表示しない
                     ((buffer-live-p b) b)))
                (buffer-list))))
(setq tabbar-buffer-list-function 'my-tabbar-buffer-list)


; エラーがあったときだけログバッファを表示
(if (not (equal (init-loader-error-log) "")) 
    (init-loader-show-log))

;; ;; グループ化しない
;; (setq tabbar-buffer-groups-function nil)

;; タブ同士の間隔
(setq tabbar-separator '(0.8))
;---------------------------------------------------------------------;
