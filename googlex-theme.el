(deftheme googlex
  "Google[x] theme")
 
(custom-theme-set-faces
 'googlex

 '(default ((((min-colors 257)) (:background "#3f464c" :foreground "#eeeeec"))
            (((min-colors 100)) (:background "#1b1b1b" :foreground "#eeeeec"))
            (t (:background "#00000" :foreground "#eeeeec"))))
 '(cursor ((t (:background "#fce94f"))))
 '(border ((t (:foreground "#ffffff"))))
 '(region ((t (:background "#6c91be"))))
 '(fringe ((t (:background "#3f464c"))))
 '(header-line ((t (:foreground "#f0dfaf" :background "#2b2b2b"))))
 '(highlight ((((min-colors 300)) (:background "#2b2b2b"))
              (t (:background "#000000"))))
 
 '(minibuffer-prompt ((t (:foreground "#729fcf" :bold t))))
 
 ;; magit
 '(magit-log-sha1 ((t (:foreground "#cf6a4c"))))
 '(magit-log-head-label-local ((t (:foreground "#3387cc"))))
 '(magit-log-head-label-remote ((t (:foreground "#65b042"))))
 '(magit-branch ((t (:foreground "#fbde2d"))))
 '(magit-section-title ((t (:foreground "#adc6ee"))))
 '(magit-item-highlight ((t (:background "#303030"))))
 
 ;; hl-line-mode
 '(hl-line-face ((t (:background "#2b2b2b"))))
 
 ;; font lock
 '(font-lock-builtin-face ((t (:foreground "#ffffff"))))
 '(font-lock-comment-face ((t (:foreground "#aeaeae"))))
 '(font-lock-function-name-face ((t (:foreground "#fdbe2d"))))
 '(font-lock-keyword-face ((t (:foreground "#fbde2d"))))
 '(font-lock-string-face ((t (:foreground "#adc6ee"))))
 '(font-lock-type-face ((t (:foreground"#ffffff"))))
 '(font-lock-variable-name-face ((t (:foreground "#fbde2d"))))
 '(font-lock-warning-face ((t (:foreground "Red" :bold t))))

 ;; powerline
 '(powerline-active1 ((t (:background "grey40" :inherit mode-line))))
 '(powerline-active2 ((t (:background "grey60" :inherit mode-line))))
 '(mode-line ((t (:foreground "#000000" :background "#fdbe2d"))))

 ;; helm
 '(helm-ff-directory ((t (:inherit font-lock-function-name-face))))
 '(helm-buffer-directory ((t (:inherit helm-ff-directory))))
 '(helm-candidate-number ((t (:inherit powerline-active2))))
 '(helm-source-header ((t (:foreground "#ffffff" :underline t :weight bold))))
 '(helm-visible-mark ((t (:background "#fdbe2d" :foreground "#000000"))))
 '(helm-selection ((t (:inherit highlight))))
 '(helm-prefarg ((t (:inherit powerline-active2))))
 
 ;; show-paren
 '(show-paren-match-face ((t (:foreground "#000000" :background "#F0F6FC" :weight bold))))
 '(show-paren-mismatch-face ((t (:foreground "#960050" :background "#1E0010" :weight bold))))
 
 ;; search
 '(isearch ((t (:foreground "#a33a37" :background "#f590ae"))))
 '(isearch-fail ((t (:foreground "#ffffff" :background "#f590ae"))))
 '(lazy-highlight ((t (:foreground "#465457" :background "#000000"))))
 
 ;; ido mode
 '(ido-first-match ((t (:foreground "#fbde2d" :weight bold))))
 '(ido-only-match ((t (:foreground "#d8fa3c" :weight bold))))
 '(ido-subdir ((t (:foreground "#adc6ee"))))
 
 ;; org-mode
 '(org-agenda-date-today
   ((t (:foreground "white" :slant italic :weight bold))) t)
 '(org-agenda-structure
   ((t (:inherit font-lock-comment-face))))
 '(org-archived ((t (:foreground "#eeeeec" :weight bold))))
 '(org-checkbox ((t (:background "#5f5f5f" :foreground "white"
                                 :box (:line-width 1 :style released-button)))))
 '(org-date ((t (:foreground "#8cd0d3" :underline t))))
 '(org-deadline-announce ((t (:foreground "#8787FF"))))
 '(org-done ((t (:bold t :weight bold :foreground "#bff740"))))
 '(org-headline-done ((t (:foreground "#8787ff"))))
 '(org-level-1 ((t (:foreground "#dfaf8f"))))
 '(org-level-2 ((t (:foreground "#aeaeae"))))
 '(org-level-3 ((t (:foreground "#94bff3"))))
 '(org-level-4 ((t (:foreground "#e0cf9f"))))
 '(org-level-5 ((t (:foreground "#93e0e3"))))
 '(org-level-6 ((t (:foreground "#8fb28f"))))
 '(org-level-7 ((t (:foreground "#8c5353"))))
 '(org-level-8 ((t (:foreground "#4c7073"))))
 '(org-table ((t (:foreground "#8787FF"))))
 '(org-todo ((t (:bold t :foreground "#e21d24" :weight bold))))
 '(org-upcoming-deadline ((t (:inherit font-lock-keyword-face))))
 '(org-warning ((t (:bold t :foreground "#cc9393"d :weight bold))))

 ;; Term
 '(term-color-blue ((t (:foreground "DeepSkyBlue" :background "DeepSkyBlue"))))
 '(term-color-magenta ((t (:foreground "magenta" :background "magenta"))))
)
 
;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))
 
(provide-theme 'googlex)

(provide 'googlex-theme)
