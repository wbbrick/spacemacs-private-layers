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

(defvar neotree-packages
  '(
    ;; package doremis go here
    neotree
    )
  )

;; (doremi-excluded-packages '()
;;   "List of packages to exclude.")

;; For each package, define a function doremi/init-<package-doremi>
;;
(defun neotree/init-neotree ()
  "Initialize my package"
  (neotree)
  (neotree-dir "~/workspace/")
  
)
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
