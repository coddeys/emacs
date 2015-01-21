(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)

(let ((my-cabal-path (expand-file-name "~/.cabal/bin")))
  (setenv "PATH" (concat my-cabal-path ":" (getenv "PATH")))
  (add-to-list 'exec-path my-cabal-path))
(custom-set-variables '(haskell-tags-on-save t))

(custom-set-variables '(haskell-process-type 'cabal-repl))

(eval-after-load 'haskell-mode
  '(define-key haskell-mode-map (kbd "C-c C-o") 'haskell-compile))
(eval-after-load 'haskell-cabal
    '(define-key haskell-cabal-mode-map (kbd "C-c C-o") 'haskell-compile))
