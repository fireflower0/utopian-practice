(defpackage #:template/controllers/root
  (:use #:cl
        #:utopian
        ;; #:template/controllers/render
        #:template/views/root)
  (:export #:index))
(in-package #:template/controllers/root)

(defun index (params)
  (declare (ignore params))
  (render 'index-page))
