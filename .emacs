;;;;; Emlyn Price .emacs
;;;; Install packages from MELPA
(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;;

;;;; Inhibit startup screen
(setq inhibit-startup-screen t)

;;;; GUI settings
;;;; Inhibit startup screen
(setq inhibit-startup-screen t)
;;; Show column number
(setq column-number-mode t)
;;; Hide toolbar
(tool-bar-mode -1)
;;; Hide menu bar
(menu-bar-mode -1)
;;; Hide scroll bar
(scroll-bar-mode -1)
;;; Sidebar line numbers
(require 'linum-relative)
(linum-on)

;;;; C options
;;; Sensible tab indentation
(smart-tabs-insinuate 'c 'c++)
;;; C comment options
(setq-default c-default-style "k&r"); c-basic-offset 4)
;(setq-default tab-width 4)
(add-hook `c-mode-common-hook `flyspell-prog-mode)
(c-set-offset `comment-intro 0)
;;; enable hideshow mode
(add-hook `c-mode-common-hook `hs-minor-mode)
;;; Automatically wrap lines in comments
(add-hook `c-mode-common-hook `comment-auto-fill)
;;; Spell check comments
(add-hook `python-mode-hook `flyspell-prog-mode)

;;;; Python options
(require 'python)
(setq python-indent-offset 4)
;;; Automatically wrap comment lines
(add-hook `python-mode-hook `comment-auto-fill)
;;; Spell check comments
(add-hook `python-mode-hook `flyspell-prog-mode)

;;;; AUCTEX settings
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq latex-run-command "pdflatex")
(setq-default TeX-master nil)
;; electric math
(setq TeX-electric-math (cons "$" "$"))
;; Start flyspell automatically when using auctex
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
; Should these be ' rather than `?
;(add-hook `LaTeX-mode-hook `visual-line-mode)
(add-hook 'LaTeX-mode-hook 'visual-line-mode)
;; use RefTeX
(require 'reftex)
(setq reftex-plug-into-AUCTeX t)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
; Note to self RE RefTeX: To insert multiple references at once, mark the
; entries with 'm'. Then press 'a' to insert all of them as a comma
; separated list into one reference call.

(defun reftex-format-cref (label def-fmt ref-style)
  (format "\\cref{%s}" label))
(setq reftex-format-ref-function 'reftex-format-cref)

;;;; org mode
(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
(add-hook 'org-mode-hook 'turn-on-flyspell)
; Wrap lines at 70 characters automatically
(add-hook 'org-mode-hook 'turn-on-auto-fill)
(setq org-agenda-files (list "~/Documents/org/home.org"
							 "~/Documents/org/work.org"
							 "~/Documents/raspberry_pi/general.org"))

;;;; Markdown
(add-hook 'markdown-mode-hook 'flyspell-mode)

;;;; Magit settings
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)



;;;; Auto fill mode
;;;   Enters new lines at 70 characters
;;;   Number of characters in a line is controlled with the variable
;;;   fill-column. Set in init file with command e.g
;;;   (setq-default fill-column 80) for 80 characters. The variable
;;;   can also be set by C-x f or M-x set-fill-column.
;;;   Define a new command to toggle the mode
(global-set-key (kbd "C-c q") 'auto-fill-mode)
;;;   Set auto fill in comments
(defun comment-auto-fill ()
  (setq-local comment-auto-fill-only-comments t)
  (auto-fill-mode 1))

;;;; Open imagej files in java mode
(add-to-list 'auto-mode-alist '("\\.ijm\\'" . java-mode))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-view-program-selection
   (quote
    (((output-dvi has-no-display-manager)
      "dvi2tty")
     ((output-dvi style-pstricks)
      "dvips and gv")
     (output-dvi "xdvi")
     (output-pdf "Zathura")
     (output-html "xdg-open"))))
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   ["#3F3F3F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#DCDCCC"])
 '(c-default-style
   (quote
    ((c-mode . "k&r")
     (c++-mode . "k&r")
     (java-mode . "java"))))
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-enabled-themes (quote (solarized)))
 '(custom-safe-themes
   (quote
    ("9d91458c4ad7c74cf946bd97ad085c0f6a40c370ac0a1cbeb2e3879f15b40553" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" "8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" "4e753673a37c71b07e3026be75dc6af3efbac5ce335f3707b7d6a110ecb636a3" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" default)))
 '(fci-rule-color "#383838")
 '(fill-column 80)
 '(frame-background-mode (quote dark))
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#002b36" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   (quote
    (("#073642" . 0)
     ("#546E00" . 20)
     ("#00736F" . 30)
     ("#00629D" . 50)
     ("#7B6000" . 60)
     ("#8B2C02" . 70)
     ("#93115C" . 85)
     ("#073642" . 100))))
 '(hl-bg-colors
   (quote
    ("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00")))
 '(hl-fg-colors
   (quote
    ("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(linum-relative-current-symbol "")
 '(linum-relative-global-mode t)
 '(magit-diff-use-overlays nil)
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(org-list-empty-line-terminates-plain-lists t)
 '(package-selected-packages
   (quote
    (fish-mode linum-relative markdown-preview-mode markdown-mode color-theme-solarized ein smart-tabs-mode magit auctex)))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(pos-tip-background-color "#073642")
 '(pos-tip-foreground-color "#93a1a1")
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(tab-width 4)
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3")
 '(weechat-color-list
   (quote
    (unspecified "#002b36" "#073642" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#839496" "#657b83")))
 '(xterm-color-names
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(xterm-color-names-bright
   ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 105 :width normal :foundry "1ASC" :family "Droid Sans Mono"))))
 '(linum-relative-current-face ((t (:inherit linum :foreground "#93a1a1" :weight bold)))))
