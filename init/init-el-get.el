(add-to-list 'load-path (relative-path "../el-get/el-get"))

(setq el-get-dir (relative-path "../el-get"))

;; Fetch and run the installer
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (let (el-get-master-branch
          ;; Do not build recipes from emacswiki due to poor quality and
          ;; documentation
          el-get-install-skip-emacswiki-recipes)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  ;; Build melpa packages for el-get
  (el-get-install 'package)
  (setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                           ("melpa" . "http://melpa.milkbox.net/packages/")))
  (el-get-elpa-build-local-recipes))


(setq el-get-git-shallow-clone t)

(add-to-list 'el-get-recipe-path (relative-path "../el-get-user/recipes"))

(el-get 'sync)

(provide 'init-el-get)
