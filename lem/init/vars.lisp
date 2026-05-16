;; -*- mode:lisp -*-
;;
;; Global editor settings.

(in-package :lem-user)

(setf *scroll-recenter-p* t)
(setf (variable-value 'lem/line-numbers:line-numbers :global) t)
(setf lem:*auto-format* t)

;; Prompt-window location
(setf lem-core::*default-prompt-gravity* :bottom-display)
(setf lem/prompt-window::*prompt-completion-window-gravity* :horizontally-above-window)
(setf lem-lisp-mode/completion::*documentation-popup-gravity* :bottom-display)
(setf lem/prompt-window::*fill-width* t)
