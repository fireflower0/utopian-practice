(defpackage :login-test/models
  (:use :cl
        :sxql
        :login-test/config)
  (:import-from :mito)
  (:export :create-table
           :insert-task
           :delete-task
           :select-all))
(in-package :login-test/models)

;;;
;; DB Utility

(defun conn-settings (&optional (db :maindb))
  (cdr (assoc db (config :databases))))

(defun db (&optional (db :maindb))
  (apply #'mito:connect-toplevel (conn-settings db)))

(defmacro with-connection (conn &body body)
  `(let ((mito:*connection* ,conn))
     ,@body))

;;;
;; DB Function

;; テーブル作成
(defun create-table ()
  (with-connection (db)
    (mito:deftable users ()
      ((salt                  :col-type (:varchar 255))
       (password              :col-type (:varchar 255))
       (mailaddress           :col-type (:varchar 255))
       (reset                 :col-type (:int 11))
       (is-user               :col-type (:int 11))
       (temp-pass             :col-type (:varchar 255))
       (temp-limit-time       :col-type (:datetime))
       (last-change-pass-time :col-type (:datetime))
       (last-login-time       :col-type (:datetime))
       (resister-time         :col-type (:datetime))))
    (mito:execute-sql (first (mito:table-definition `users)))))

;; データ挿入
(defun insert-task (data)
  (with-connection (db)
    (mito:create-dao 'users :name data)))

;; データ削除
(defun delete-task (id)
  (with-connection (db)
    (mito:delete-by-values 'users :id id)))

;; 全てのデータを取得して返す
(defun select-all ()
  (let (ret)
    (with-connection (db)
      (setf ret (mito:select-dao 'users)))
    ret))
