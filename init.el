(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;; (add-to-list 'package-archives
;;              '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

;;; Minimal profile

(setq custom-file "~/.emacs.d/custom-settings.el")
(load custom-file t)
(set-frame-font "Menlo 14" nil t)


;;;;

(fset 'yes-or-no-p 'y-or-n-p)
(setq kill-buffer-query-functions
      (remq 'process-kill-buffer-query-function
        kill-buffer-query-functions))

;; Set encoding
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; No splash screen please ... jeez
(setq inhibit-startup-message t)
(setq default-directory "~/")
(setq command-line-default-directory "~/")


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
(add-to-list 'load-path "~/.emacs.d/site-lisp/")

;;;
(setq savehist-file "~/.emacs.d/savehist")
(savehist-mode 1)
(setq history-length t)
(setq history-delete-duplicates t)
(setq savehist-save-minibuffer-history 1)
(setq savehist-additional-variables
      '(kill-ring
        search-ring
        regexp-search-ring))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; fix the PATH variable
;; (defun set-exec-path-from-shell-PATH ()
;;   (let ((path-from-shell (shell-command-to-string
;;            "TERM=vt100 $SHELL -i -c 'echo $PATH'")))
;;     (setenv "PATH" path-from-shell)
;;     (setq exec-path (split-string path-from-shell path-separator))))

;; (when window-system (set-exec-path-from-shell-PATH))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Keys
(global-set-key (quote [f1]) (quote help))
(global-set-key (quote [f3]) (quote kill-this-buffer))
(global-set-key (quote [f5]) (quote command-history-mode))
(global-set-key (quote [f6]) (quote repeat-complex-command))
(global-set-key (quote [f11]) (quote delete-other-windows))
(global-set-key (quote [f12]) (quote other-window))
(global-set-key (quote [f13]) (quote next-buffer))
(global-set-key (quote [f14]) (quote list-buffers))
(global-set-key (quote [f15]) (quote previous-buffer))
(global-set-key (quote [f16]) (quote toggle-truncate-lines))
(global-set-key (quote [button4]) (quote scroll-down))
(global-set-key (quote [button5]) (quote scroll-up))

;; Write backup files to own directory
(setq backup-directory-alist
      `(("." . ,(expand-file-name
                 (concat user-emacs-directory "backups")))))

;; Make backups of files, even when they're in version control
;(setq vc-make-backup-files t)

;; Save point position between sessions
;; Seems to already setup via customize
;;(require 'saveplace)
;;(setq-default save-place t)
;;(setq save-place-file (expand-file-name ".places" user-emacs-directory))

;; if indent-tabs-mode is off, untabify before saving
;; needs to return nil to indicate write hasn't happened.  Will hang
;; otherwise.
;; (add-hook 'write-file-hooks 
;;           (lambda () (if (not indent-tabs-mode)
;;                          (untabify (point-min) (point-max)))
;;             nil ))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; No linums with these modes
;; (add-hook 'Man-mode-hook (lambda () (linum-mode -1)))
;; (add-hook 'buffer-menu-mode-hook (lambda () (linum-mode -1)))
;; (add-hook 'dired-mode-hook (lambda () (linum-mode -1)))
;; (add-hook 'electric-buffer-menu-mode-hook (lambda () (linum-mode -1)))
;; (add-hook 'erc-mode-hook (lambda () (linum-mode -1)))
;; (add-hook 'help-mode-hook (lambda () (linum-mode -1)))
;; (add-hook 'Info-mode-hook (lambda () (linum-mode -1)))
;; (add-hook 'speedbar-mode-hook (lambda () (linum-mode -1)))
;; (add-hook 'woman-post-format-hook (lambda () (linum-mode -1)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Mail
(setq user-full-name "Chris Cowan")
(setq mail-default-reply-to "chris.o.cowan@gmail.com")
(setq user-mail-address "chris.o.cowan@gmail.com")

; Add mail hooks
(add-hook 'mail-setup-hook 'auto-fill-mode)
(add-hook 'message-setup-hook 'auto-fill-mode)
(add-hook 'mail-citation-hook 'sc-cite-original)

; (setq mail-default-headers
;       (concat
;        "X-important: special-delivery\n"
;        "Return-Receipt-To: ceez@bga.com\n"))

(setq mail-self-blind t)

(require 'use-package-ensure)
(setq use-package-always-ensure t)

(use-package magit
  :bind ("C-x g" . magit-status))

;; The package is "python" but the mode is "python-mode":
(use-package python
  :mode ("\\.py\\'" . python-mode)
  :interpreter ("python" . python-mode))

(use-package go-mode
  :mode ("\\.go\\'" . go-mode))

(use-package zig-mode
  :mode ("\\.zig\\'" . zig-mode))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; dired and other extensions
; (load-library "mailcrypt")
; (mc-setversion "gpg")
;(require 'crypt)
;(require 'git)

;; (progn
;;   (require 'dired)
;;   (define-key dired-mode-map (kbd "d") 'nil))
;; (require 'dired-x)
;; (require 'hideshow)
;; (require 'nxml-mode)
;; ;(require 'psvn)
;; (require 'sgml-mode)
;; (require 'xcscope)

(add-to-list 'auto-mode-alist '("\\.mosy\\'" . snmpv2-mode))
(add-to-list 'auto-mode-alist '("\\.my\\'"  . snmpv2-mode))
(add-to-list 'auto-mode-alist '("\\.t\\'" . cperl-mode))
(add-to-list 'auto-mode-alist '("\\.sml\\'" . sml-mode))
(add-to-list 'auto-mode-alist '("\\.vm\\'" . emacs-lisp-mode))
(add-to-list 'auto-mode-alist '("\\.zsh\\'" . sh-mode))
(add-to-list 'auto-mode-alist '("\\.zshrc\\'" . sh-mode))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; c mode
(add-hook 'c-mode-common-hook
      '(lambda () (c-toggle-auto-hungry-state 1)))
(add-hook 'c-mode-common-hook
      '(lambda () (c-toggle-auto-state 1)))
(add-hook 'c-mode-common-hook
      '(lambda () (abbrev-mode 1)))
(add-hook 'c-mode-common-hook 'auto-fill-mode)

(defun linux-c-mode ()
  "C mode with adjusted defaults for use with the Linux kernel."
  (interactive)
  (c-mode)
  (c-set-style "K&R")
  (setq c-basic-offset 8))

(setq auto-mode-alist (cons '("/usr/src/linux.*/.*\\.[ch]$" . linux-c-mode)
                       auto-mode-alist))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; log mode
(use-package log4j-mode
  :hook (log4j-mode-hook . font-lock-mode))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Haskell stuff
(use-package haskell-mode
  :hook ((haskell-mode . haskell-indentation-mode)
         (haskell-mode . interactive-haskell-mode)
         (haskell-mode . haskell-decl-scan-mode)
         (haskell-mode . haskell-doc-mode)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package json-mode)
(use-package dockerfile-mode)
(use-package dash-at-point
  :bind (("C-c d" . dash-at-point)
         ("C-c e" . dash-at-point-with-docset)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Org mode, et al
(require 'org)
(require 'remember)
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cl" 'org-agenda)
(global-set-key "\C-cl" 'org-iswitchb)

;; Set to the location of your Org files on your local system
(setq org-directory "~/org")
;; Set to the name of the file where new notes will be stored
(setq org-mobile-inbox-for-pull "~/org/flagged.org")
;; Set to <your Dropbox root directory>/MobileOrg.
(setq org-mobile-directory "~/Dropbox/Apps/MobileOrg")

(global-set-key (kbd "C-c r") 'remember) 
(add-hook 'remember-mode-hook 'org-remember-apply-template)
(setq org-remember-templates  
      '((?n "* %U %?\n\n  %i\n  %a" "~/org/notes.org")))  
(setq remember-annotation-functions '(org-remember-annotation)) 
(setq remember-handler-functions '(org-remember-handler)) 

;; active Bable languages
;; (org-babel-do-load-languages
;;  'org-babel-load-languages
;;  '((C . t)
;;    (clojure . t)
;;    (emacs-lisp . t)
;;    (haskell . t)
;;    (java . t)
;;    (lisp . t)
;;    (ocaml . t)
;;    (perl . t)
;;    (python . t)
;;    (scala . t)
;;    (scheme . t)
;;    (sh . t)
;;    (shen . t)
;;   ))

(server-force-delete)
(server-start)

(put 'scroll-left 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'narrow-to-page 'disabled nil)

(delete-other-windows)


