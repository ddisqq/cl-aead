;; Copyright (c) 2024-2026 Parkian Company LLC. All rights reserved.
;; SPDX-License-Identifier: Apache-2.0

(load "cl-aead.asd")
(asdf:test-system :aead/test)
(format t "~&✓ aead tests passed!~%")
(quit)
