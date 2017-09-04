
;;;###autoload
(defun beautiful-backward-delete-word (arg)
  "Delete characters backward until encountering the beginning of a word.
With argument ARG, do this that many times. Does NOT add to kill ring."
  (interactive "p")
  (delete-region (point) (progn (backward-word arg) (point))))

;;;###autoload
(defun beautiful-helm-projectile-ag-at-point ()
  (interactive)
  (let ((helm-ag-insert-at-point 'symbol))
    (helm-projectile-ag)))


;;;###autoload
(defun beautiful-company-move-up ()
  (interactive)
  (company-complete-common-or-cycle 1))

;;;###autoload
(defun beautiful-company-move-down ()
  (interactive)
  (company-complete-common-or-cycle -1))
