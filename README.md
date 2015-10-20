# Projectile-Haskell

This is a set of customizations for [projectile](https://github.com/bbatsov/projectile) package to actually handle Haskell projects.

It is very crude at the moment and all it does is:
  * help projectile identify a Haskell project by locating `Setup.hs` file in the root of it,
  * enable switching between implementation and test (where test files are identified by checking for "Test" suffix in the file name).

I want it to be a non-intrusive lightweight *addition* to Projectile package, because I don't think it makes sense to code language-specific stuff into the core of projectile itself. So this thing should be hooked to the post-init of either 'projectile-mode or 'haskell-mode. Or something else. I'm not good with all this elisp/emacs stuff, I just want to code my Haskell projects using Emacs ;-)

Once I have the hooking stuff figured out, I'm planning to upload this package to MELPA or such.

That said, your contributions are welcome!
