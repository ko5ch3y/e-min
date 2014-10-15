;; This makes it unnecessary to start emacs with --debug-init.
(setq debug-on-error t)

;; Allows using this config outside of ~/.emacs.d (even through a symlink):
;; emacs -q --load /path/to/init.el
(defun relative-path (&optional n)
  (expand-file-name n (file-name-directory (file-truename load-file-name))))

(add-to-list 'load-path (relative-path "init"))

(require 'init-el-get)
(require 'init-config)

;; Load the main config file which does everything else
(load (relative-path "config/config-main"))
