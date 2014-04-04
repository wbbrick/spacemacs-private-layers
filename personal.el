;disable backup
(setq backup-inhibited t)
;disable auto save
(setq auto-save-default nil)

;; (remove-hook 'find-file-hooks 'vc-find-file-hook)

(require 'whitespace)
(setq whitespace-style '(face empty tabs lines-tail trailing))
(global-whitespace-mode t)

(require 'key-chord)


(require 'dired-rainbow)
(require 'dired-details+)

(global-set-key [remap goto-line] 'goto-line-with-feedback)

(defun goto-line-with-feedback ()
  "Show line numbers temporarily, while prompting for the line number input"
  (interactive)
  (unwind-protect
      (progn
        (linum-mode 1)
        (goto-line (read-number "Goto line: ")))
    (linum-mode -1)))

(global-set-key (kbd "C-x g") 'webjump)

Add DuckDuckGo to webjump
(eval-after-load "webjump"
  '(add-to-list 'webjump-sites
                '("ddg" .
                  [simple-query
                   "www.duckduckgo.com"
                   "https://duckduckgo.com/?q="
                   ""])))

(require 'package)
(add-to-list 'package-archives
             '("marmalade" .
               "http://marmalade-repo.org/packages/"))
(package-initialize)

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))

(setq web-mode-code-indent-offset 4)
(setq web-mode-css-indent-offset 2)
(setq web-mode-markup-indent-offset 2)

;(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
;(add-to-list 'auto-mode-alist '("\\.ejs\\'" . html-mode))


(defun add-space-in-parens ()
  (interactive)
  (goto-line 0)
  (goto-char 0)
  (replace-regexp "\\([^( ]\\ ))" "\\1 \ )")
  (goto-line 0)
  (goto-char 0)
  (replace-regexp "(\\([^ )]\\ )" "\( \\1"))

(defun turn-on-ac-js2 () (auto-complete-mode 1) (ac-js2-mode 1))

;(add-hook 'flycheck-mode-hook 'flycheck-color-mode-line-mode)

(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

(defvar my-keys-minor-mode-map (make-keymap) "my-keys-minor-mode keymap.")

(define-key my-keys-minor-mode-map (kbd "M-j") 'backward-char) ; was indent-new-comment-line
(define-key my-keys-minor-mode-map (kbd "M-l") 'forward-char)  ; was downcase-word
(define-key my-keys-minor-mode-map (kbd "M-i") 'previous-line) ; was tab-to-tab-stop
(define-key my-keys-minor-mode-map (kbd "M-k") 'next-line) ; was kill-sentence

(define-minor-mode my-keys-minor-mode
  "A minor mode so that my key settings override annoying major modes."
  t " my-keys" 'my-keys-minor-mode-map)

(defun open-external-explorer () (interactive) (shell-command "explorer ."))
(defun open-personal-file () (interactive) (find-file "~/.emacs.d/personal/personal.el"))

(defun clean-js-file () (interactive)
  (delete-trailing-whitespace)
  (prelude-untabify-buffer)
  )

(my-keys-minor-mode 1)

(global-set-key (kbd "M-j") 'backward-char) ; was indent-new-comment-line
(global-set-key (kbd "M-l") 'forward-char)  ; was downcase-word
(global-set-key (kbd "M-i") 'previous-line) ; was tab-to-tab-stop
(global-set-key (kbd "M-k") 'next-line) ; was kill-sentence

(global-set-key (kbd "C-M-j") 'backward-word) ; was indent-new-comment-line
(global-set-key (kbd "C-M-l") 'forward-word)  ; was downcase-word

(global-set-key (kbd "M-SPC") 'set-mark-command) ; was just-one-space
(global-set-key (kbd "<f8>") 'execute-extended-command)
(global-set-key (kbd "M-`") 'doremi-buffers+)
(global-set-key (kbd "C-`") 'doremi-window-height+)

(global-set-key (kbd "<C-tab>") 'next-multiframe-window)
(global-set-key (kbd "<C-S-tab>") 'previous-multiframe-window)

(global-set-key [f12] 'open-external-explorer)
(global-set-key [f11] 'open-personal-file)
(global-set-key [f10] 'clean-js-file)
(global-set-key [f5] 'call-last-kbd-macro)


(global-hl-line-mode +0)
(whitespace-mode +0)
(setq prelude-whitespace nil)

(defvar active-window (frame-selected-window))

(defun active-window-switch ()
  (let ((win (frame-selected-window)))
    (when (not (eq win active-window))
      (with-selected-window active-window
        (buffer-face-mode -1))
      (setq active-window win)
      (setq buffer-face-mode-face (list :background "#181818"))
      (buffer-face-mode 1))))

(add-hook 'post-command-hook #'active-window-switch)

(cond
 ((file-exists-p "e:/workspace") (cd "E:/workspace") )
 ((file-exists-p "d:/workspace") (cd "D:/workspace") )
 ((file-exists-p "c:/workspace") (cd "C:/workspace") )
 ( t (cd "~/"))
 )
(dired ".")
(split-window-horizontally 20)
(other-window 1)
(switch-to-buffer "*scratch*")
(split-window-vertically 30)
(other-window 1)

(eshell)
(other-window 1)

;;NOTES

;;wombat is a good dark medium-contrast theme, comes built in
;;recommended packages:
;; js2-mode
;; js2-ac-mode
;; auto-complete-mode
;; json-mode
;; dired-details-hide
