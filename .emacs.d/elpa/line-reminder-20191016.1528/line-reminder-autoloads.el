;;; line-reminder-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "line-reminder" "line-reminder.el" (0 0 0 0))
;;; Generated autoloads from line-reminder.el

(autoload 'line-reminder-clear-reminder-lines-sign "line-reminder" "\
Clear all the reminder lines' sign.

\(fn)" t nil)

(autoload 'line-reminder-transfer-to-saved-lines "line-reminder" "\
Transfer the `change-lines' to `saved-lines'.

\(fn)" t nil)

(autoload 'line-reminder-mode "line-reminder" "\
Minor mode 'line-reminder-mode'.

\(fn &optional ARG)" t nil)

(defvar global-line-reminder-mode nil "\
Non-nil if Global Line-Reminder mode is enabled.
See the `global-line-reminder-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-line-reminder-mode'.")

(custom-autoload 'global-line-reminder-mode "line-reminder" nil)

(autoload 'global-line-reminder-mode "line-reminder" "\
Toggle Line-Reminder mode in all buffers.
With prefix ARG, enable Global Line-Reminder mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Line-Reminder mode is enabled in all buffers where
`line-reminder-turn-on-line-reminder-mode' would do it.
See `line-reminder-mode' for more information on Line-Reminder mode.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "line-reminder" '("line-reminder-")))

;;;***

;;;### (autoloads nil nil ("line-reminder-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; line-reminder-autoloads.el ends here
