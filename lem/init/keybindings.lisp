;; -*- mode:lisp -*-
;;
;; Keybindings (Doom Emacs-style transient menus).

(in-package :lem-user)

(define-key lem-vi-mode:*normal-keymap* "q" 'quit-active-window)

;; SPC leader transient (Doom-style)
(lem/transient:define-transient *leader-keymap*
  :description "Leader"
  :display-style :row

  ;; Files
  (:keymap
   :display-style :column
   :description "file"
   (:key "f f" :suffix 'lem:find-file              :description "find file")
   (:key "f r" :suffix 'lem:find-recent-file        :description "recent files")
   (:key "f s" :suffix 'lem:save-current-buffer     :description "save file")
   (:key "f S" :suffix 'lem:save-some-buffers       :description "save all")
   (:key "f t" :suffix 'lem/filer:filer             :description "file tree"))

  ;; Buffers
  (:keymap
   :display-style :column
   :description "buffer"
   (:key "b b" :suffix 'lem:select-buffer           :description "switch buffer")
   (:key "b l" :suffix 'lem/list-buffers:list-buffers            :description "list buffers")
   (:key "b k" :suffix 'lem:kill-buffer             :description "kill buffer")
   (:key "b n" :suffix 'lem:next-buffer             :description "next buffer")
   (:key "b p" :suffix 'lem:previous-buffer         :description "previous buffer"))

  ;; Windows
  (:keymap
   :display-style :column
   :description "window"
   (:key "w h" :suffix 'lem:window-move-left        :description "move left")
   (:key "w l" :suffix 'lem:window-move-right       :description "move right")
   (:key "w k" :suffix 'lem:window-move-up          :description "move up")
   (:key "w j" :suffix 'lem:window-move-down        :description "move down")
   (:key "w s" :suffix 'lem:split-active-window-vertically   :description "split horizontal")
   (:key "w v" :suffix 'lem:split-active-window-horizontally :description "split vertical")
   (:key "w c" :suffix 'lem:delete-active-window    :description "close window")
   (:key "w o" :suffix 'lem:delete-other-windows    :description "close others")
   (:key "w w" :suffix 'lem:next-window             :description "other window"))

  ;; Project
  (:keymap
   :display-style :column
   :description "project"
   (:key "p f" :suffix 'lem-core/commands/project:project-find-file       :description "find file in project")
   (:key "p p" :suffix 'lem-core/commands/project:project-switch          :description "switch project")
   (:key "p d" :suffix 'lem-core/commands/project:project-root-directory  :description "project directory")
   (:key "p k" :suffix 'lem-core/commands/project:project-kill-buffers    :description "kill project buffers"))

  ;; Search
  (:keymap
   :display-style :column
   :description "search"
   (:key "s g" :suffix 'lem/grep:grep               :description "grep")
   (:key "s p" :suffix 'lem/grep:project-grep       :description "project grep"))

  ;; Eval / Code
  (:keymap
   :display-style :column
   :description "eval"
   (:key "e e" :suffix 'lem-lisp-mode:lisp-eval-last-expression  :description "eval last expr")
   (:key "e f" :suffix 'lem-lisp-mode:lisp-load-file             :description "load file"))

  ;; Help
  (:keymap
   :display-style :column
   :description "help"
   (:key "h k" :suffix 'lem:describe-key            :description "describe key")
   (:key "h b" :suffix 'lem:describe-bindings       :description "describe bindings")
   (:key "h m" :suffix 'lem:describe-mode           :description "describe mode")
   (:key "h a" :suffix 'lem:apropos-command          :description "apropos command"))

  ;; Toggle
  (:keymap
   :display-style :column
   :description "toggle"
   (:key "t l" :suffix 'lem/line-numbers:toggle-line-numbers  :description "line numbers")
   (:key "t t" :suffix 'lem:load-theme              :description "choose theme"))

  ;; Open (Doom-style SPC o)
  (:keymap
   :display-style :column
   :description "open"
   (:key "o p" :suffix 'lem/filer:filer                        :description "project tree")
   (:key "o t" :suffix 'my/terminal                             :description "terminal")))

(define-key lem-vi-mode:*normal-keymap* "Space" *leader-keymap*)
(define-key lem-vi-mode:*normal-keymap* "S /" 'lem/language-mode:comment-or-uncomment-region)
(define-key lem:*global-keymap* "S-/" 'lem/language-mode:comment-or-uncomment-region)
