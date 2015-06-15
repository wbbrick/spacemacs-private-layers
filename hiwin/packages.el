;;; packages.el --- hiwin Layer packages File for Spacemacs
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

(defvar hiwin-packages
  '(
    hiwin
    ;; package hiwins go here
    )
  "List of all packages to install and/or initialize. Built-in packages
which require an initialization must be listed explicitly in the list.")

(defvar hiwin-excluded-packages '()
  "List of packages to exclude.")

;; For each package, define a function hiwin/init-<package-hiwin>
;;
(defun hiwin/init-hiwin ()
  "Initialize my package"
  (hiwin-activate)
  )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
