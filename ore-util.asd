#|
  This file is part of ore-util project.
  Copyright (c) 2018 Akihide Nano (an74abc@gmail.com)
|#

#|
  Author : Akihide Nano (an74abc@gmail.com)
|#

(in-package :cl-user)
(defpackage ore-util-asd
  (:use :cl :asdf))
(in-package :ore-util-asd)

(defsystem ore-util
    :version "0.1"
    :author "Akihide Nano"
    :license "LLGPL"
    :depends-on ()
    :components ((:module "src"
			  :components
			  ((:file "ore-util"))))
    :description "ore ore utility.")
