;;; funcs.el --- lsp-intellij layer packages file for Spacemacs.
;;
;; Copyright (c) 2018 Richard Jones
;;
;; Author:  <richajn@amazon.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: MIT

;;; Code:


(defun spacemacs//lsp-intellij-setup-leader-keys (mode)
  (spacemacs/set-leader-keys-for-major-mode mode
    ;; run
    "," 'lsp-intellij-run-at-point
    ;; configuration
    "cr" 'lsp-intellij-open-run-configurations
    ;; goto
    "gg" 'xref-find-definitions
    "gi" 'lsp-intellij-find-implementations
    "gr" 'xref-find-references
    ;; help/doc
    "hs" 'xref-find-apropos
    ;; project
    "pb" 'lsp-intellij-build-project
    "pr" 'lsp-intellij-run-project
    "ps" 'lsp-intellij-open-project-structure
    ;; refactor
    "rf" 'lsp-format-buffer
    ;; IDEA
    "It" 'lsp-intellij-toggle-frame-visibility))

;;; funcs.el ends here
