(defun open-external-explorer () (interactive) (shell-command "explorer ."))
(defun open-personal-file () (interactive) (find-file "~/.spacemacs"))
(defun open-workspace () (interactive) (dired "d:/workspace"))

(bind-keys*
 ( (kbd "M-b") . helm-mini); buffer-select
 ( (kbd "M-j") . backward-char); was indent-new-comment-line
 ( (kbd "M-l") . forward-char); was downcase-word
 ( (kbd "M-i") . previous-line); was tab-to-tab-stop
 ( (kbd "M-k") . next-line); was kill-sentence
 ( (kbd "C-M-j") . backward-word); was indent-new-comment-line
 ( (kbd "C-M-l") . forward-word); was downcase-word

 ( (kbd "M-SPC") . set-mark-command); was just-one-space
 ( (kbd "<f8>") . execute-extended-command)
 ( (kbd "M-`") . doremi-buffers+)
 ( (kbd "C-`") . doremi-window-height+)
 ( (kbd "M-q") . kill-buffer)
 ( (kbd "C-=") . er/expand-region)

 ( (kbd "M-2") . next-multiframe-window)
 ( (kbd "<C-tab>") . next-multiframe-window)
 ( (kbd "M-1") . previous-multiframe-window)
 ( (kbd "<C-S-tab>") . previous-multiframe-window)
 ( (kbd "C-+") . zoom-frm-in)
 ( (kbd "C--") . zoom-frm-out)

 ( [f12] . open-external-explorer)
 ( [f11] . open-personal-file)
 ( [f10] . delete-trailing-whitespace)
 ( [f9] . open-workspace)
 ( [f5] . call-last-kbd-macro)

 )
