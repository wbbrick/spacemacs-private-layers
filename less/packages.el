;;; packages.el --- js Layer packages File for Spacemacs
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

(defvar less-packages
  '(
    ;; package lesss go here
    less-css-mode
    )
  "List of all packages to install and/or initialize. Built-in packages
which require an initialization must be listed explicitly in the list.")

(defvar less-excluded-packages '()
  "List of packages to exclude.")

;; For each package, define a function less/init-<package-less>
;;

(defun less/init-less-css-mode ()
  "Initialize my package"
  (use-package less-css-mode
    :commands (
               less-css-mode
               )
    )
  (add-to-list 'auto-mode-alist '("\\.variables\\'" . less-css-mode))
  (add-to-list 'auto-mode-alist '("\\.overrides\\'" . less-css-mode))
  (add-to-list 'auto-mode-alist '("\\.variables\\'" . rainbow-mode))
  (add-to-list 'auto-mode-alist '("\\.overrides\\'" . rainbow-mode))
  )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
