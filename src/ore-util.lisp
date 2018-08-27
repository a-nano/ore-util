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

;; (cformat t "Hello ~A~%" (if t (string 'world)) => Hello WORLD
;; (cformat t "Hello ~A~%" (if nil (string 'world))) => nil

(defmacro cformat (stream str param)
  (let ((gparam (gensym)))
    `(let ((,gparam ,param))
       (format ,stream ,(concatenate 'string
				     "~:[~;"
				     str
				     "~]")
	       ,gparam
	       ,gparam))))
