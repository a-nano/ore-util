(in-package :cl-user)
(defpackage ore-util
  (:nicknames :util)
  (:use :cl))
(in-package :ore-util)

(defun time-to-string ()
  (reduce #'(lambda (a b)
	      (concatenate 'string a (write-to-string b)))
	  (cdddr (reverse (multiple-value-list (get-decoded-time))))
	  :initial-value ""))
