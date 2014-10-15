e-min
=====

My emacs configuration system.

Aims:

- Doesn't have to reside in ~/.emacs.d
- Provides a minimal system, doesn't set any unnecessary options - this is left to user config files
- User configurations can be in separate repos
- Fetching the same configuration should give you the exact same configuration ie. no unexpected breakages, use specific package checksums.
- No unnecessary packages like org-mode - you are free to use literal org-mode in user configs, but it is overkill for the system itself.

Inspiration:

- oh-my-emacs
- el-get
- purcell/emacs.d
- cabbage (was e-max, hence e-min)
