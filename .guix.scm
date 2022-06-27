(use-modules
 (guix packages)
 (guix git-download)
 (guix gexp)
 ((guix licenses) #:prefix license:)
 (guix build-system trivial)
 (gnu packages base)
 (gnu packages embedded)
 ;; (gnu packages version-control)
 )

(define %source-dir (dirname (current-filename)))

(define-public zephyr-dev-package
  (package
    (name "zephyr-dev-package")
    (version "dev")
    (source (local-file %source-dir
                        #:recursive? #t
                        #:select? (git-predicate %source-dir)))
    (build-system trivial-build-system)
    (inputs (list west))
    (home-page "")
    (synopsis "")
    (description "")
    (license license:gpl3+)))

zephyr-dev-package
