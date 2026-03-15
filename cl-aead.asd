;;;; Copyright (c) 2024-2026 Parkian Company LLC. All rights reserved.
;;;; SPDX-License-Identifier: BSD-3-Clause
;;;;
;;;; cl-aead - Pure Common Lisp AEAD (Authenticated Encryption with Associated Data)

(asdf:defsystem #:cl-aead
  :description "Pure Common Lisp AEAD implementations: ChaCha20-Poly1305, XChaCha20-Poly1305, AES-256-GCM"
  :author "Park Ian Co"
  :license "Apache-2.0"
  :version "0.1.0"
  :serial t
  :components ((:file "package")
               (:module "src"
                :components ((:file "package")
                             (:file "conditions" :depends-on ("package"))
                             (:file "types" :depends-on ("package"))
                             (:file "cl-aead" :depends-on ("package" "conditions" "types")))))))

(asdf:defsystem #:cl-aead/test
  :description "Tests for cl-aead"
  :depends-on (#:cl-aead)
  :serial t
  :components ((:module "test"
                :components ((:file "test-aead"))))
  :perform (asdf:test-op (op c)
             (let ((result (uiop:symbol-call :cl-aead-test :run-all-tests)))
               (unless result
                 (error "Tests failed")))))
