
;;; init-platform --- Platform-specific settings
;;; Commentary:

;;; Code:
(require 'init-fonts)

;; This must run after window setup or it seems to have no effect.
(add-hook 'window-setup-hook
          (lambda ()
            (when (memq window-system '(mac ns))
              (add-to-list 'default-frame-alist '(font . "Hack"))
              (set-face-attribute 'default nil :font "Hack")
              (define-key global-map (kbd "<s-return>") 'toggle-frame-fullscreen))

            (when (memq window-system '(x))
              (add-to-list 'default-frame-alist '(font . "Hack"))
              (set-face-attribute 'default nil :font "Hack"))

            (when (fboundp 'powerline-reset)
              (powerline-reset))))

;; Display emoji on Macs where the font is already there.
(when (memq window-system '(mac))
  (set-fontset-font t 'unicode "Apple Color Emoji" nil 'prepend))

(projectile-global-mode)
(setq projectile-completion-system 'helm)
(setq helm-split-window-in-side-p t)
(setq projectile-enable-caching t)
(helm-projectile-on)

(require 'highlight)
(require 'evil-search-highlight-persist)
(global-evil-search-highlight-persist t)
(set-face-attribute 'evil-search-highlight-persist-highlight-face nil
                           :inherit 'region
                           :background nil)


(setq insert-directory-program (executable-find "gls"))
(global-font-lock-mode 1)

(require 'jedi)
(add-to-list 'ac-sources 'ac-source-jedi-direct)
(add-hook 'python-mode-hook 'jedi:setup)

(setq jedi:complete-on-dot t)

(setq electric-pair-mode nil)
(add-hook 'dired-mode-hook 'auto-revert-mode)

(provide 'init-platform)
;;; init-platform.el ends here
