(require 'package)
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("nongnu" . "https://elpa.nongnu.org/nongnu/") t)
(package-initialize)

;; Ensure that use-package is installed.
;;
;; If use-package isn't already installed, it's extremely likely that this is a
;; fresh installation! So we'll want to update the package repository and
;; install use-package before loading the literate configuration.
(when (not (package-installed-p 'use-package))
  (package-refresh-contents)
  (package-install 'use-package))

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

(org-babel-load-file  "~/.emacs.d/config.org")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("5e3fc08bcadce4c6785fc49be686a4a82a356db569f55d411258984e952f194a" default))
 '(elfeed-feeds '("https://arxiv.org/schemas/atom.xsd"))
 '(package-selected-packages
   '(elfeed-score elfeed-org elfeed org-auctex https://github.com/oantolin/math-delimiters/blob/master/math-delimiters.el quelpa-use-package quelpa math-delimiters latexmath-delimiters org-download exec-path-from-shell org-superstar org-bullets avy cdlatex auctex flycheck-languagetool vertico orderless use-package org-roam-ui dockerfile-mode alect-themes)))

;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(fixed-pitch ((t (:family "JetBrains Mono" :height 150))))
;;  '(org-block ((t (:inherit fixed-pitch))))
;;  '(org-code ((t (:inherit (shadow fixed-pitch)))))
;;  '(org-document-info ((t (:foreground "dark orange"))))
;;  '(org-document-info-keyword ((t (:inherit (shadow fixed-pitch)))))
;;  '(org-document-title ((t (:inherit default :weight bold :foreground "Black" :font "Arial" :height 2.0 :underline nil))))
;;  '(org-indent ((t (:inherit (org-hide fixed-pitch)))))
;;  '(org-level-1 ((t (:inherit default :weight bold :foreground "Black" :font "Arial" :height 1.35))))
;;  '(org-level-2 ((t (:inherit default :weight bold :foreground "Black" :font "Arial" :height 1.25))))
;;  '(org-level-3 ((t (:inherit default :weight bold :foreground "Black" :font "Arial" :height 1.1))))
;;  '(org-level-4 ((t (:inherit default :weight bold :foreground "Black" :font "Arial" :height 0.1))))
;;  '(org-level-5 ((t (:inherit default :weight bold :foreground "Black" :font "Arial"))))
;;  '(org-level-6 ((t (:inherit default :weight bold :foreground "Black" :font "Arial"))))
;;  '(org-level-7 ((t (:inherit default :weight bold :foreground "Black" :font "Arial"))))
;;  '(org-level-8 ((t (:inherit default :weight bold :foreground "Black" :font "Arial"))))
;;  '(org-link ((t (:foreground "royal blue" :underline t))))
;;  '(org-meta-line ((t (:inherit (font-lock-comment-face fixed-pitch)))))
;;  '(org-property-value ((t (:inherit fixed-pitch))) t)
;;  '(org-special-keyword ((t (:inherit (font-lock-comment-face fixed-pitch)))))
;;  '(org-table ((t (:inherit fixed-pitch :foreground "#83a598"))))
;;  '(org-tag ((t (:inherit (shadow fixed-pitch) :weight bold :height 0.8))))
;;  '(org-verbatim ((t (:inherit (shadow fixed-pitch)))))
;;  '(variable-pitch ((t (:family "Arial" :height 150 :weight Normal)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-document-title ((t (:inherit default :weight bold :foreground "Black" :font "JetBrains Mono" :height 1.5 :underline nil))))
 '(org-level-1 ((t (:inherit default :weight bold :foreground "Black" :font "JetBrains Mono" :height 1.35))))
 '(org-level-2 ((t (:inherit default :weight bold :foreground "Black" :font "JetBrains Mono" :height 1.25))))
 '(org-level-3 ((t (:inherit default :weight bold :foreground "Black" :font "JetBrains Mono" :height 1.2))))
 '(org-level-4 ((t (:inherit default :weight bold :foreground "Black" :font "JetBrains Mono" :height 1.1))))
 '(org-level-5 ((t (:inherit default :weight bold :foreground "Black" :font "JetBrains Mono"))))
 '(org-level-6 ((t (:inherit default :weight bold :foreground "Black" :font "JetBrains Mono"))))
 '(org-level-7 ((t (:inherit default :weight bold :foreground "Black" :font "JetBrains Mono"))))
 '(org-level-8 ((t (:inherit default :weight bold :foreground "Black" :font "JetBrains Mono")))))
