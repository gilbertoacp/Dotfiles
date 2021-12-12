;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Gilberto Calderón"
      user-mail-address "calderongilberto3@gmail.com")

(setq doom-font (font-spec :family "JetBrainsMono Nerd Font Mono" :size 14 :weight 'regular)
      doom-variable-pitch-font (font-spec :family "sans" :size 15))

(setq org-directory "~/org/")

(setq display-line-numbers-type t)

(use-package doom-themes
  :ensure t
  :config
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t) ; if nil, italics is universally disabled
  (load-theme 'doom-monokai-pro t))

(use-package dashboard
  :ensure t
  :config
  (setq dashboard-startup-banner "~/.doom.d/banner.png")
  (setq dashboard-center-content t)
  (setq dashboard-set-heading-icons t)
  (setq dashboard-set-file-icons t)
  (dashboard-setup-startup-hook))
