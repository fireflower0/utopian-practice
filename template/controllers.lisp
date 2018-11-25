(defpackage #:template/controllers
  (:use #:cl
        #:utopian
        #:template/views)
  (:export #:index))
(in-package #:template/controllers)

(defun index (params)
  (declare (ignore params))
  (render 'index-page))
