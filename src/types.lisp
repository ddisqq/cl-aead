;; Copyright (c) 2024-2026 Parkian Company LLC. All rights reserved.
;; SPDX-License-Identifier: Apache-2.0

(in-package #:cl-aead)

;;; Core types for cl-aead
(deftype cl-aead-id () '(unsigned-byte 64))
(deftype cl-aead-status () '(member :ready :active :error :shutdown))
