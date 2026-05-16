;; -*- mode:lisp -*-
;;
;; Font, frame, and the active theme.

(in-package :lem-user)

(set-font-size 12)

;; Disable Tabbar
(setf lem/tabbar:*enable-tabbar-on-startup* nil)

(load-theme "doom-one")
