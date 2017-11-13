;;M-x describe-bindings で現在のキーバインド確認
;;M-x describe-keyで入力したキーのバインドを獲得
;; 連続するキーの例
;; (global-set-key "\C-xc" 'compile)
;; (global-set-key "\C-x\C-a" 'tags-search)
;; kbdというマクロを介することでバックスラッシュ(\)をつける必要がなくなる
;;
;; まず、scratchバッファに書いてC-jで評価して、エラーがでなければ設定ファイルに
;; 書いた方が良い。


; コメントアウト
(define-key global-map "\C-c;" 'comment-region)

; コメント解除
(define-key global-map "\C-c:" 'uncomment-region)

; undo
(define-key global-map "\C-z" 'undo)

;;ウィンドウ移動(mac)
(global-set-key [(C t)] 'other-window)

;;ページのトップへ移動
;; (define-key global-map [M-up] 'beginning-of-buffer)

;;ページのトップへ移動
;; (define-key global-map [M-down] 'end-of-buffer)

;;矩形選択
;; 詳しいキーバインド操作：http://dev.ariel-networks.com/articles/emacs/part5/
(cua-mode t)
(setq cua-enable-cua-keys nil)

;;init.el更新
(global-set-key [C-f12] 'eval-buffer)

;; anything起動
(define-key global-map (kbd "C-;") 'anything)

;; 上側に大きくスクロール
;; (define-key global-map "\C-o" 'cua-scroll-down)
