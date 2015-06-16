(defun open-external-explorer () (interactive) (shell-command "explorer ."))
(defun open-personal-file () (interactive) (find-file "~/.spacemacs"))
(defun open-workspace () (interactive) (dired "d:/workspace"))

(global-set-key (kbd "M-b") 'helm-mini)

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
(global-set-key (kbd "C-=") 'er/expand-region)

(global-set-key (kbd "M-2") 'next-multiframe-window)
(global-set-key (kbd "<C-tab>") 'next-multiframe-window)
(global-set-key (kbd "M-1") 'previous-multiframe-window)
(global-set-key (kbd "<C-S-tab>") 'previous-multiframe-window)
(global-set-key (kbd "C-+") 'zoom-frm-in)
(global-set-key (kbd "C--") 'zoom-frm-out)

(global-set-key [f12] 'open-external-explorer)
(global-set-key [f11] 'open-personal-file)
(global-set-key [f10] 'delete-trailing-whitespace)
(global-set-key [f9] 'open-workspace)
(global-set-key [f5] 'call-last-kbd-macro)

