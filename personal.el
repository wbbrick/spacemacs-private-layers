;disable backup
(setq backup-inhibited t)
;disable auto save
(setq auto-save-default nil)
(setq-default indent-tabs-mode t)

(require 'whitespace)
(setq whitespace-style '(face empty lines-tail trailing))
(global-whitespace-mode t)

(require 'key-chord)
(key-chord-mode 1)
;(require 'dired-rainbow)
(require 'dired-details+)

(require 'undo-tree)
(undo-tree-mode 1)

(scroll-bar-mode -1)
(global-font-lock-mode 1)
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

; Add DuckDuckGo to webjump
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
(add-to-list 'auto-mode-alist '("\\.ejs\\'" . web-mode))

(setq web-mode-code-indent-offset 4)
(setq web-mode-css-indent-offset 2)
(setq web-mode-markup-indent-offset 2)

(setq initial-scratch-message
      ";; scratch buffer")

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
(define-key my-keys-minor-mode-map (kbd "M-q") 'kill-this-buffer)

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
  (prelude-tabify-buffer)
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
(global-set-key (kbd "M-q") 'kill-buffer)


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

;(require 'main-line)
;(setq main-line-separator-style 'zigzag)

(eshell)
(other-window 1)

;;mode line customization
;; Mode line setup
(setq-default
 mode-line-format
 '(; Position, including warning for 80 columns
   (:propertize "%4l:" face mode-line-position-face)
   (:eval (propertize "%3c" 'face
                      (if (>= (current-column) 80)
                          'mode-line-80col-face
                        'mode-line-position-face)))
   ; emacsclient [default -- keep?]
   mode-line-client
   "  "
   ; read-only or modified status
   (:eval
    (cond (buffer-read-only
           (propertize " RO " 'face 'mode-line-read-only-face))
          ((buffer-modified-p)
           (propertize " ** " 'face 'mode-line-modified-face))
          (t "      ")))
   "    "
   ; directory and buffer/file name
   (:propertize (:eval (shorten-directory default-directory 30))
                face mode-line-folder-face)
   (:propertize "%b"
                face mode-line-filename-face)
   ; narrow [default -- keep?]
   " %n "
   ; mode indicators: vc, recursive edit, major mode, minor modes, process, global
   (vc-mode vc-mode)
   "  %["
   (:propertize mode-name
                face mode-line-mode-face)
   "%] "
   (:eval (propertize (format-mode-line minor-mode-alist)
                      'face 'mode-line-minor-mode-face))
   (:propertize mode-line-process
                face mode-line-process-face)
   (global-mode-string global-mode-string)
   "    "
   ; nyan-mode uses nyan cat as an alternative to %p
   (:eval (when nyan-mode (list (nyan-create))))
   ))

;; Helper function
(defun shorten-directory (dir max-length)
  "Show up to `max-length' characters of a directory name `dir'."
  (let ((path (reverse (split-string (abbreviate-file-name dir) "/")))
        (output ""))
    (when (and path (equal "" (car path)))
      (setq path (cdr path)))
    (while (and path (< (length output) (- max-length 4)))
      (setq output (concat (car path) "/" output))
      (setq path (cdr path)))
    (when path
      (setq output (concat ".../" output)))
    output))

;; Extra mode line faces
(make-face 'mode-line-read-only-face)
(make-face 'mode-line-modified-face)
(make-face 'mode-line-folder-face)
(make-face 'mode-line-filename-face)
(make-face 'mode-line-position-face)
(make-face 'mode-line-mode-face)
(make-face 'mode-line-minor-mode-face)
(make-face 'mode-line-process-face)
(make-face 'mode-line-80col-face)

(set-face-attribute 'mode-line nil
    :foreground "gray60" :background "gray20"
    :inverse-video nil
    :box '(:line-width 6 :color "gray20" :style nil))
(set-face-attribute 'mode-line-inactive nil
    :foreground "gray80" :background "gray40"
    :inverse-video nil
    :box '(:line-width 6 :color "gray40" :style nil))

(set-face-attribute 'mode-line-read-only-face nil
    :inherit 'mode-line-face
    :foreground "#4271ae"
    :box '(:line-width 2 :color "#4271ae"))
(set-face-attribute 'mode-line-modified-face nil
    :inherit 'mode-line-face
    :foreground "#c82829"
    :background "#ffffff"
    :box '(:line-width 2 :color "#c82829"))
(set-face-attribute 'mode-line-folder-face nil
    :inherit 'mode-line-face
    :foreground "gray60")
(set-face-attribute 'mode-line-filename-face nil
    :inherit 'mode-line-face
    :foreground "#eab700"
    :weight 'bold)
(set-face-attribute 'mode-line-position-face nil
    :inherit 'mode-line-face
    :family "Menlo" :height 100)
(set-face-attribute 'mode-line-mode-face nil
    :inherit 'mode-line-face
    :foreground "gray80")
(set-face-attribute 'mode-line-minor-mode-face nil
    :inherit 'mode-line-mode-face
    :foreground "gray40"
    :height 110)
(set-face-attribute 'mode-line-process-face nil
    :inherit 'mode-line-face
    :foreground "#718c00")
(set-face-attribute 'mode-line-80col-face nil
    :inherit 'mode-line-position-face
    :foreground "black" :background "#eab700")

;;NOTES

;;wombat is a good dark medium-contrast theme, comes built in
;;recommended packages:
;; js2-mode
;; js2-ac-mode
;; auto-complete-mode
;; json-mode
;; dired-details-hide
