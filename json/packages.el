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

(defvar json-packages
  '(
    ;; package doremis go here
    json-mode
    )
  )

;; (doremi-excluded-packages '()
;;   "List of packages to exclude.")

;; For each package, define a function doremi/init-<package-doremi>
;;
(defun personal-config/init-personal-config ()
  "Initialize my package"
  (add-to-list 'auto-mode-alist '("\\.json\\'" . json-mode))
  
  (add-hook 'json-mode-hook
            '(lambda ()
               ;; Setting indentation lvel
               (setq c-basic-offset 2)

               (setq tab-width 2)

               (make-local-variable 'js-indent-level)
               (setq js-indent-level 2)


               ;; Make TAB equivilent to 4 spaces
               (setq indent-tabs-mode nil)

               )
            )
  )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
