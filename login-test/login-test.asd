(defsystem "login-test"
  :class :package-inferred-system
  :version "0.1.0"
  :author "fireflower0"
  :license ""
  :depends-on (;; Webフレームワーク
               "clack"
               "utopian"

               ;; 設定
               "envy"

               ;; HTML Template
               "djula"

               ;; DB
               "mito"
               "sxql"

               "login-test/app"))
