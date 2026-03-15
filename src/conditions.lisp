;; Copyright (c) 2024-2026 Parkian Company LLC. All rights reserved.
;; SPDX-License-Identifier: Apache-2.0

(in-package #:cl-aead)

(define-condition cl-aead-error (error)
  ((message :initarg :message :reader cl-aead-error-message))
  (:report (lambda (condition stream)
             (format stream "cl-aead error: ~A" (cl-aead-error-message condition)))))
