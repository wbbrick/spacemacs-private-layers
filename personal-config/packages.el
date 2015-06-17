;;; packages.el --- doremi Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2014 Sylvain Benner
;; Copyright (c) 2014-2015 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defvar personal-config-packages
  '(
    ;; package doremis go here
    )
  )

;; (doremi-excluded-packages '()
;;   "List of packages to exclude.")

;; For each package, define a function doremi/init-<package-doremi>
;;
(defun personal-config/init-personal-config ()
  "Initialize my package"

  (defvar my-keys-minor-mode-map (make-keymap) "my-keys-minor-mode keymap.")
  (define-key my-keys-minor-mode-map (kbd "M-q") 'kill-this-buffer)

  (define-key text-mode-map (kbd "<tab>") 'tab-to-tab-stop)

  (define-key my-keys-minor-mode-map (kbd "M-j") (kbd "C-b")) ; was indent-new-comment-line
  (define-key my-keys-minor-mode-map (kbd "M-l") (kbd "C-f"))  ; was downcase-word
  (define-key my-keys-minor-mode-map (kbd "M-i") (kbd "C-p")) ; was tab-to-tab-stop
  (define-key my-keys-minor-mode-map (kbd "M-k") (kbd "C-n")) ; was kill-sentence
  (define-key my-keys-minor-mode-map (kbd "M-b") 'helm-mini)
  (define-minor-mode my-keys-minor-mode
    "A minor mode so that my key settings override annoying major modes."
    t " my-keys" 'my-keyes-minor-mode-map)

  (my-keys-minor-mode 1)
  )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
