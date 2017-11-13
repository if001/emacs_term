
;;-------------------------------------------------------------------------;;
;;フォント設定
;;-------------------------------------------------------------------------;;
;; (set-language-environment "Japanese")
;; (prefer-cooding-system 'utf-8)
;; フォント名確認は以下のコマンドをscratchでC-jで評価
;; (dolist (x (font-family-list)) (print x))
;; こっちでもおkなんか時間かかる
;; (insert (prin1-to-string (x-list-fonts "*")))



;;英語
;;desktopの時の文字サイズ
;;(if (string-match "desktop" system-name)
;;(set-face-attribute 'default nil
;;    		    :family "Ricty Diminished Regular"
;;		    :height 150))
;;(if (string-match "desktop" system-name)
;;    (set-fontset-font
;;     nil 'japanese-jisx0208
;;     (font-spec :family "源真ゴシック" :size 16))
;;  ) ;; font


;; macの設定
;;(if (string-match "if-air.local" system-name)
;;    (set-face-attribute 'default nil
;			:family "Osaka"
;;			:family "Ricty Diminished Discord"
;;			:height 144)
;;  )

;;macでヒラギノのライトが使いたいけどなぜかできない
;;(if (string-match "if-air.local" system-name)
;;    (set-fontset-font
;;     nil 'japanese-jisx0208
;;     (font-spec  :family "Hiragino Kaku Gothic Pro" :size 10))
;;  )

;; ;; 英語と日本語の比率を1：2に設定するらしい
;;(add-to-list 'face-font-rescale-alist
;;             '(".*Hiragino Kaku Gothic Pro.*" . 1.2))



;; 行間の設定
(setq-default line-spacing 3)
;;-------------------------------------------------------------------------;;

