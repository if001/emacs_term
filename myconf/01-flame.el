;;-------------------------------------------------------------------------;;
;;時計の表示
(display-time-mode 1)

;;;スタートメッセージを表示しない
(setq inhibit-startup-message t)

;; ;; tool bar を消す.
(tool-bar-mode -1)
(menu-bar-mode -1)


(custom-set-variables
 '(blink-cursor-mode nil);;カーソルの点滅をやめる
 '(inhibit-startup-screen t);;起動時にGNU Emacs を表示しない
 '(show-paren-mode t));;対応するカッコを強調

;;-------------------------------------------------------------------------;;



;;-------------------------------------------------------------------------;;
;;左に行番号表示
(require 'linum)
(global-linum-mode)
(custom-set-faces
 '(linum ((t (:inherit (shadow default) :background "black"))))) ;;背景色

 (setq linum-format "%3d")  ;;予めマージンを指定

;; モードラインに行数を非表示に
(line-number-mode nil)
;;-------------------------------------------------------------------------;;


