
;;personalized in
;disable backup
(setq backup-inhibited t)
;disable auto save
(setq auto-save-default nil)

(remove-hook 'find-file-hooks 'vc-find-file-hook)
(custom-set-variables
;; custom-set-variables was added by Custom.
;; If you edit it by hand, you could mess it up, so be careful.
;; Your init file should contain only one such instance.
;; If there is more than one, they won't work right.
'(ansi-color-names-vector ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#ad7fa8" "#8cc4ff" "#eeeeec"])
'(custom-enabled-themes (quote (wombat))))
(custom-set-faces
;; custom-set-faces was added by Custom.
;; If you edit it by hand, you could mess it up, so be careful.
;; Your init file should contain only one such instance.
;; If there is more than one, they won't work right.
)

(require 'package)
(add-to-list 'package-archives
             '("marmalade" .
               "http://marmalade-repo.org/packages/"))
(package-initialize)

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



(my-keys-minor-mode 1)

(global-set-key (kbd "M-j") 'backward-char) ; was indent-new-comment-line
(global-set-key (kbd "M-l") 'forward-char)  ; was downcase-word
(global-set-key (kbd "M-i") 'previous-line) ; was tab-to-tab-stop
(global-set-key (kbd "M-k") 'next-line) ; was kill-sentence

(global-set-key (kbd "C-M-j") 'backward-word) ; was indent-new-comment-line
(global-set-key (kbd "C-M-l") 'forward-word)  ; was downcase-word

(global-set-key (kbd "M-SPC") 'set-mark-command) ; was just-one-space
(global-set-key (kbd "<f8>") 'execute-extended-command)

(global-set-key (kbd "<C-tab>") 'next-multiframe-window)
(global-set-key (kbd "<C-S-tab>") 'previous-multiframe-window)

(global-set-key [f12] 'open-external-explorer)
(global-set-key [f5] 'call-last-kbd-macro)

(global-hl-line-mode +0)
(whitespace-mode +0)
(setq prelude-whitespace nil)

(cond
 ((file-exists-p "d:/workspace") (dired "d:/workspace/"))
 ((file-exists-p "c:/workspace") (dired "c:/workspace/"))
 ( t (dired "~/"))
 )
                                        ;(dired-details-hide)

(split-window-horizontally 20)
(other-window 1)
(switch-to-buffer "*scratch*")
(split-window-vertically 30)
(other-window 1)
(eshell)
(other-window 1)

;;NOTES

;;to get to the dropbox file modify your emacs shortcut to look something like this:
;;C:\devtools\emacs-24.3\bin\runemacs.exe -q -l "C:\Users\wbrick.wbrick-laptop\Dropbox\.emacs"

;;wombat is a good dark medium-contrast theme, comes built in
;;recommended packages:
;; js2-mode
;; js2-ac-mode
;; auto-complete-mode
;; json-mode
;; dired-details-hide
