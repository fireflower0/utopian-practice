(defpackage #:template/config
  (:use #:cl
        #:utopian
        #:template/controllers)
  (:export #:*routes*))
(in-package #:template/config)

(defroutes *routes* ((:GET "/" #'index)))
