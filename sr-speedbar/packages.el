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

(defvar sr-speedbar-packages
  '(
    ;; package doremis go here
    speedbar
    sr-speedbar
    )
  )

;; (doremi-excluded-packages '()
;;   "List of packages to exclude.")

;; For each package, define a function doremi/init-<package-doremi>
;;
(defun sr-speedbar/init-sr-speedbar ()
  "Initialize my package"
  (add-hook 'speedbar-mode-hook (lambda () (define-key speedbar-mode-map "u" 'speedbar-up-directory)))
  (custom-set-variables
   '(speedbar-show-unknown-files t)
   )
  (set-variable 'sr-speedbar-right-side nil)
  (set-variable 'speedbar-directory-unshown-regexp "^$")
  (set-variable 'sr-speedbar-width 15)

  (use-package sr-speedbar
    :commands (
               sr-speedbar-open
               )
    )
  (sr-speedbar-open)
  )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
