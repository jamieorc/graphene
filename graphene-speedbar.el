;; Uses sr-speedbar by Sebastian Rose.
(require 'sr-speedbar)

;; Set up defaults.
(setq speedbar-hide-button-brackets-flag t
      speedbar-show-unknown-files t
      speedbar-smart-directory-expand-flag t
      speedbar-use-images nil
      speedbar-indentation-width 2
      speedbar-update-flag t
      sr-speedbar-auto-refresh nil
      sr-speedbar-skip-other-window-p t
      sr-speedbar-right-side nil)
;; sr-speedbar is set to NOT be included in C-x o -- so we need a shortcut to switch to it.
(global-set-key (kbd "C-c s") 'sr-speedbar-select-window)

;; Mac-like keymap settings.
(add-hook 'speedbar-reconfigure-keymaps-hook
          '(lambda ()
             (define-key speedbar-key-map [S-up] 'speedbar-up-directory)
             (define-key speedbar-key-map [right] 'speedbar-flush-expand-line)
             (define-key speedbar-key-map [left] 'speedbar-contract-line)
             (define-key speedbar-key-map (kbd "<kp-enter>") 'speedbar-item-rename)
             (define-key speedbar-key-map (kbd "<s-backspace>") 'speedbar-item-delete)
             (define-key speedbar-key-map (kbd "<s-i>") 'speedbar-item-info)
             (define-key speedbar-key-map (kbd "<s-r>") 'speedbar-refresh)
             ))

;; Highlight the current line
(add-hook 'speedbar-mode-hook '(lambda () (hl-line-mode 1)))

(provide 'graphene-speedbar)
