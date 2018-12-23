(defpackage :login-test/app
  (:use :cl
        :utopian
        :login-test/controllers)
  (:import-from :login-test/config
                :*static-dir*))
(in-package :login-test/app)

(defapp login-test-app () ())

(defvar *app* (make-instance 'login-test-app :routes *routes*))

(builder
 (:static
  :path "/static/"
  :root *static-dir*)
 *app*)
