(defpackage #:template/views/root
  (:use #:cl
        #:lsx
        #:utopian)
  (:export #:index-page))
(in-package #:template/views/root)

(lsx:enable-lsx-syntax)

(defview index-page ()
  ()
  (:render <html><body>Hello, World!</body></html>))
