;;;-------------------------------------------------------------------------;;
;; 背景色
(set-background-color "grey10")

;; 文字の色
(set-foreground-color "grey70")

;;コメントの色
(set-face-foreground 'font-lock-comment-face "SeaGreen4")
;;(set-face-foreground 'font-lock-comment-face "grey50")

;; def
(set-face-foreground 'font-lock-keyword-face "DeepSkyBlue2")

;; class
(set-face-foreground 'font-lock-type-face "maroon1")


;; string
(set-face-foreground 'font-lock-string-face "steel blue")

;;定数
(set-face-foreground 'font-lock-constant-face "PaleVioletRed1")

;;関数
(set-face-foreground 'font-lock-function-name-face "MediumOrchid1")
;;DeepSkyBlue2




;;変数
(set-face-foreground 'font-lock-variable-name-face "grey70")


;; 選択範囲の色を指定
(set-face-background 'region "SkyBlue")
(set-face-foreground 'region "gray30")

;;背景透過
;; (set-frame-parameter nil 'alpha 95)

;; カーソル色
(set-cursor-color "DarkOrange")
;;DarkSlateGray4


;; mode-line
;;(set-face-attribute 'mode-line-highlight "SkyBlue")
;;(set-face-foreground 'mode-line-inactive "SkyBlue")

(set-face-background 'mode-line "gray10")
(set-face-foreground 'mode-line "gray70")

(set-face-background 'mode-line-inactive "gray10")
(set-face-foreground 'mode-line-inactive "gray70")

;; 縁なし
;;(set-face-attribute 'mode-line          nil :box nil)
(set-face-attribute 'mode-line-inactive nil :box nil)

;; ;;-------------------------------------------------------------------------;;


;; ;;-------------------------------------------------------------------------;;

(defun window-resizer ()
  "Control window size and position."
  (interactive)
  (let ((window-obj (selected-window))
        (current-width (window-width))
        (current-height (window-height))
        (dx (if (= (nth 0 (window-edges)) 0) 1
              -1))
        (dy (if (= (nth 1 (window-edges)) 0) 1
              -1))
        c)
    (catch 'end-flag
      (while t
        (message "size[%dx%d]"
                 (window-width) (window-height))
        (setq c (read-char))
        (cond ((= c ?r)
               (enlarge-window-horizontally dx))
              ((= c ?l)
               (shrink-window-horizontally dx))
              ((= c ?d)
               (enlarge-window dy))
              ((= c ?u)
               (shrink-window dy))
              ;; otherwise
              (t
               (message "Quit")
               (throw 'end-flag t)))))))

;; C-q をプリフィックスキー化
(define-key global-map "\C-q" (make-sparse-keymap))

;; quoted-insert は C-q C-q へ割り当て
(global-set-key "\C-q\C-q" 'quoted-insert)

;; window-resizer は C-q C-r (resize) で
(global-set-key "\C-q\C-r" 'window-resizer)

;; ;; C-x o にはもううんざり
;; (global-set-key "\C-qf" 'windmove-right)
;; (global-set-key "\C-qb" 'windmove-left)
;; (global-set-key "\C-qn" 'windmove-down)
;; (global-set-key "\C-qp" 'windmove-up)
;; ;;-------------------------------------------------------------------------;;




;; ;;-------------------------------------------------------------------------;;
;;インデントハイライト
;; ;;-------------------------------------------------------------------------;;
(add-to-list 'load-path "~/.emacs.d/vendor/Highlight-Indentation-for-Emacs")
(require 'highlight-indentation)
(setq highlight-indentation-mode t)

(setq highlight-indentation-offset 2)  ;; default: 4
(set-face-background 'highlight-indentation-face "gray20")
(set-face-background 'highlight-indentation-current-column-face "gray20")
;; (add-hook 'coffee-mode-hook 'highlight-indentation-current-column-mode)
;; (add-hook 'cperl-mode-hook  'highlight-indentation-current-column-mode)
;; (add-hook 'scss-mode-hook   'highlight-indentation-current-column-mode)
;; (add-hook 'python-mode-hook   'highlight-indentation-current-column-mode)
(add-hook 'python-mode-hook   'highlight-indentation-mode)

(global-set-key "\C-h" 'highlight-indentation-mode)

;; ;;-------------------------------------------------------------------------;;



;; ;;-------------------------------------------------------------------------;;
;;現在行にアンダーライン
;; ;;-------------------------------------------------------------------------;;
(defface hlline-face
  '((((class color)
      (background dark))
     (:background "gray20" :underline "DarkSlateGray4"))
    (((class color)
      (background light))
    (:background "gray20":underline "DarkSlateGray4"))
    (t()))
  "*Face used by hl-line.")
(setq hl-line-face 'hlline-face)
;(setq hl-line-face 'underline)
(global-hl-line-mode)
;; ;;-------------------------------------------------------------------------;;
