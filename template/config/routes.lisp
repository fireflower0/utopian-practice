(defpackage #:template/config/routes
  (:use #:cl
        #:utopian)
  (:export #:*routes*))
(in-package #:template/config/routes)

(defroutes *routes* ()
  (:controllers #P"../controllers/"))

(route :GET "/" "root:index")
