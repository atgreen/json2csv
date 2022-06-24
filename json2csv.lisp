;;; json2csv.lisp
;;;
;;; Distributed under the terms of the MIT license.  See LICENSE file for details.

(defpackage #:json2csv
  (:use #:cl)
  (:export main))

(in-package :json2csv)

(defun main (args)
  (print args)
  (if (eq (length args) 2)
      (let* ((rows (json:decode-json-from-string (uiop:read-file-string (cadr args))))
	     (fields (mapcar (lambda (f) (car f)) (car rows))))
	(format t "~{~a~^|~}~%" (mapcar (lambda (field) (json:lisp-to-camel-case (string field))) fields))
	(dolist (row rows)
	  (format t "~{~a~^|~}~%" (mapcar (lambda (field) (cdr (assoc field row))) fields))))
      (format t "ERROR: missing or extra json filename~%"))
  (sb-ext:quit))
