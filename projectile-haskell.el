;; Identify a Haskell project root by the location of its "Setup.hs" file
(add-to-list 'projectile-project-root-files "Setup.hs")
(setq projectile-test-suffix-function
      (lambda (project-type)
	(if (eq 'haskell-cabal project-type)
	    "Test"
	  (projectile-test-suffix project-type))))
