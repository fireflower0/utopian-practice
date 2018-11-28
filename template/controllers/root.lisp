(defpackage #:template/controllers/root
  (:use #:cl
        #:utopian
        #:template/controllers/render)
  (:export #:index))
(in-package #:template/controllers/root)

(defun index (params)
  (declare (ignore params))
  (render #P"index.html"))
