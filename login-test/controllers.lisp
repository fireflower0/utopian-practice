(defpackage :login-test/controllers
  (:use :cl
        :utopian
        :login-test/views
        :login-test/models)
  (:export :*routes*))
(in-package :login-test/controllers)

;;;
;; Routing Function

;; トップページ
(defun login (param)
  (declare (ignore params))
  (djula-render #P"login.html"))

;;;
;; Definition route

(defroutes *routes*
    ((:GET "/" #'login)))
