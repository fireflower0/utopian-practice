(defpackage #:template/app
  (:use #:cl
        #:utopian
        #:template/config/config))
(in-package #:template/app)

(defapp template-app () ())

(make-instance 'template-app
               :routes *routes*)
