;; -*- mode:lisp -*-
;;
;; User-defined commands.

(in-package :lem-user)

;; Invoke the terminal command by name (the same way M-x does), so the
;; reader doesn't need the lem-terminal package to exist at load time.
(lem:define-command my/terminal () ()
  (let ((cmd (lem:find-command "terminal")))
    (if cmd
        (lem:call-command cmd nil)
        (lem:message "terminal command not found — load lem-terminal first"))))
