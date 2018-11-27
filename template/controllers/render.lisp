(defpackage #:template/controllers/render
  (:use #:cl
        #:utopian
        #:template/views/root)
  (:import-from #:djula
                #:add-template-directory
                #:compile-template*
                #:render-template*)
  (:export #:render))
(in-package #:template/controllers/render)

(defparameter *application-root*   (asdf:system-source-directory :template))
(defparameter *template-directory* (merge-pathnames #P"../views/" *application-root*))

(djula:add-template-directory *template-directory*)

(defparameter *template-registry* (make-hash-table :test 'equal))

(defun render (template-path &optional env)
  (let ((template (gethash template-path *template-registry*)))
    (unless template
      (setf template (djula:compile-template* (princ-to-string template-path)))
      (setf (gethash template-path *template-registry*) template))
    (apply #'djula:render-template*
           template nil
           env)))
