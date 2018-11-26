(defpackage #:template/app
  (:use #:cl
        #:utopian
        #:template/config/routes
        #:template/config/application))
(in-package #:template/app)

(make-instance 'template-app
               :routes *routes*)
