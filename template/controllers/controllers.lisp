(defpackage #:template/controllers/controllers
  (:use #:cl
        #:utopian
        #:template/views/views)
  (:export #:index))
(in-package #:template/controllers/controllers)

(defun index (params)
  (declare (ignore params))
  (render 'index-page))
