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

(defvar js-packages
  '(
    ;; package jss go here
    ac-js2
    jsx-mode
    web-mode
    editorconfig
    )
  "List of all packages to install and/or initialize. Built-in packages
which require an initialization must be listed explicitly in the list.")

(defvar js-excluded-packages '()
  "List of packages to exclude.")

;; For each package, define a function js/init-<package-js>
;;

(defun js/init-web-mode ()
  "Initialize my package"
  (add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.ejs\\'" . web-mode))
  (setq web-mode-code-indent-offset 4)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-markup-indent-offset 2)
  (setq js2-node-externs t)
  )

(defun js/init-ac-js2 ()
  "Initialize my package"
  (add-hook 'js2-mode-hook
            '(lambda ()
               ;; turn on js2 mode
               (ac-js2-mode t)

               ;; Setting indentation lvel
               (setq c-basic-offset 4)

               ;; Make TAB equivilent to 4 spaces
               (setq tab-width 4)

               )
            )
  )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
