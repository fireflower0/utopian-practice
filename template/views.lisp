(defpackage #:template/views
  (:use #:cl
        #:lsx
        #:utopian)
  (:export #:index-page))
(in-package #:template/views)

(lsx:enable-lsx-syntax)

(defview index-page ()
  ()
  (:render <html><body>Hello, World!</body></html>))
