(defpackage #:template/app
  (:use #:cl
        #:template/config/routes
        #:template/config/application))
(in-package #:template/app)

(make-instance 'template-app
               :routes *routes*)
