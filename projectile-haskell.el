(add-hook 'projectile-mode-hook
          (lambda ()
            ;; Identify a Haskell project root by the location of its "Setup.hs" file
            (add-to-list 'projectile-project-root-files "Setup.hs")
            (setq projectile-test-suffix-function
                  (lambda (project-type)
                    (if (member project-type '(haskell-cabal haskell-stack))
                        "Test"
                      ;; call the original implementation if it's not a haskell project
                      (funcall (get 'projectile-test-suffix-function 'standard-value) project-type))))))
