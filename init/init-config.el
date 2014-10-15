(add-to-list 'load-path (relative-path "../config"))

(let ((default-directory (relative-path "../config")))
  (normal-top-level-add-subdirs-to-load-path))

(provide 'init-config)
