(defpackage #:template/config/config
  (:use #:cl
        #:utopian
        #:template/controllers/controllers)
  (:export #:*routes*))
(in-package #:template/config/config)

(defroutes *routes* ((:GET "/" #'index)))
