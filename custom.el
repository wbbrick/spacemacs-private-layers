(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-js2-evaluate-calls t)
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector ["white" "#303030" "#b3b3b3" "#606060"])
 '(auto-save-default nil)
 '(backward-delete-char-untabify-method (quote hungry))
 '(blink-cursor-mode nil)
 '(curchg-default-cursor-color "Green")
 '(curchg-default-cursor-type (quote box))
 '(cursor-in-non-selected-windows nil)
 '(custom-enabled-themes (quote (gruvbox)))
 '(custom-safe-themes
   (quote
	("75d807376ac43e6ac6ae3892f1f377a4a3ad2eb70b14223b4ed0355e62116814" "806d8c827b214f5f60348114bd27c6dcb5d19047f7ac482ad61e8077a6c5ea60" "9dae95cdbed1505d45322ef8b5aa90ccb6cb59e0ff26fef0b8f411dfc416c552" "4eaad15465961fd26ef9eef3bee2f630a71d8a4b5b0a588dc851135302f69b16" "cd70962b469931807533f5ab78293e901253f5eeb133a46c2965359f23bfb2ea" "ed5af4af1d148dc4e0e79e4215c85e7ed21488d63303ddde27880ea91112b07e" "454dc6f3a1e9e062f34c0f988bcef5d898146edc5df4aa666bf5c30bed2ada2e" "cd9d626cc4a0ca0d35c6fcb22e1c988aa19707e71f8b50953eba60daf7048f7b" "39dd7106e6387e0c45dfce8ed44351078f6acd29a345d8b22e7b8e54ac25bac4" "cab317d0125d7aab145bc7ee03a1e16804d5abdfa2aa8738198ac30dc5f7b569" default)))
 '(desktop-path (quote ("~/.emacs.d/desktop/")))
 '(desktop-save (quote ask-if-exists))
 '(desktop-save-mode nil)
 '(dired-details-hidden-string "")
 '(dired-listing-switches "1 a")
 '(display-time-24hr-format nil)
 '(elfeed-feeds (quote ("www.google.com")))
 '(eshell-load-hook nil)
 '(fci-rule-color "#383838")
 '(flycheck-javascript-jshint-executable "jshint --reporter=jslint ")
 '(flycheck-jshintrc ".jshintrc")
 '(fringe-mode nil nil (fringe))
 '(git-gutter+-window-width nil)
 '(helm-mode t)
 '(indent-tabs-mode t)
 '(indicate-buffer-boundaries
   (quote
	((t . right)
	 (top . right)
	 (bottom . right)
	 (up . right)
	 (down . right))))
 '(js-indent-level 4)
 '(js-paren-indent-offset 0)
 '(js2-include-node-externs t)
 '(js3-boring-indentation t)
 '(js3-indent-level 4)
 '(js3-indent-tabs-mode t)
 '(less-css-compile-at-save nil)
 '(main-line-separator-style (quote arrow14))
 '(mode-line-format
   (quote
	("%e"
	 (:eval
	  (concat
	   (main-line-rmw
		(quote left)
		main-line-color1)
	   (main-line-buffer-id
		(quote left)
		main-line-color1 main-line-color2)
	   (main-line-major-mode
		(quote left)
		main-line-color1)
	   (main-line-narrow
		(quote left)
		main-line-color1 main-line-color2)
	   (main-line-vc
		(quote center)
		main-line-color2)
	   (main-line-make-fill main-line-color2)
	   (main-line-row
		(quote right)
		main-line-color1 main-line-color2)
	   (main-line-percent-xpm
		(quote right)
		nil main-line-color1)
	   (main-line-percent
		(quote center)
		nil main-line-color1))))))
 '(mode-line-in-non-selected-windows nil)
 '(paradox-github-token t)
 '(prelude-auto-save nil)
 '(scss-compile-at-save nil)
 '(sml-modeline-borders (quote ("(" . ")")))
 '(sml-modeline-len 20)
 '(sml-modeline-mode t)
 '(sml-modeline-numbers (quote percentage))
 '(standard-indent 4)
 '(tab-width 4)
 '(undo-tree-auto-save-history t)
 '(vc-annotate-background "#2B2B2B")
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
 '(wakatime-api-key "9feeaac3-8676-4d84-bf29-f4da9b6c34a1")
 '(wakatime-cli-path "d:/wakatime/wakatime-cli.py")
 '(whitespace-line-column 80))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(sml-modeline-end-face ((t (:inherit match))))
 '(sml-modeline-vis-face ((t (:background "blue")))))
