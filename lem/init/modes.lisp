;; -*- mode:lisp -*-
;;
;; Mode bootstrap.

(in-package :lem-user)

(lem-vi-mode:vi-mode)

;; Start the Lisp REPL in vi insert mode.
(add-hook lem-lisp-mode:*lisp-repl-mode-hook* 'lem-vi-mode/commands:vi-insert)
