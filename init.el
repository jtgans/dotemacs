;; Emacs initialization is handled in the emacs-init.org file.

(defconst jtg:org-init-filename (expand-file-name "emacs-init.org" user-emacs-directory)
  "The filename for the org-mode init file.")

(defconst jtg:generated-init-filename (expand-file-name "emacs-init.el" user-emacs-directory)
  "The filename for the elisp init file generated from `jtg:org-init-filename'.")

(defun jtg:load-init-from-org ()
  "Loads emacs' initialization file from the org-mode init file."
  (let* ((org-init-attrs (file-attributes jtg:org-init-filename))
         (org-init-mtime (nth 5 org-init-attrs))
         (generated-init-attrs (file-attributes jtg:generated-init-filename))
         (generated-init-mtime (nth 5 generated-init-attrs)))
    (if (or (null generated-init-mtime)
            (time-less-p generated-init-mtime org-init-mtime))
        (progn
          (org-babel-load-file jtg:org-init-filename)
          (message (concat "Regenerated init from " jtg:org-init-filename)))
      (progn
        (load jtg:generated-init-filename)
        (message (concat "Loaded cached init from " jtg:generated-init-filename))))))

(jtg:load-init-from-org)
