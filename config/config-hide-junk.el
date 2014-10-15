(dolist (mode '(menu-bar-mode tool-bar-mode scroll-bar-mode))
  (when (fboundp mode) (funcall mode -1)))

(setq initial-scratch-message "")
(setq inhibit-startup-screen t)

(provide 'config-hide-junk)
