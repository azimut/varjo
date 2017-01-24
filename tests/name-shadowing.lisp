(in-package :varjo.tests)
(5am:in-suite name-shadowing-tests)

;;------------------------------------------------------------
;; Helper data

(varjo::def-v-type-class foo-g (varjo::v-ephemeral-type) ())

(varjo:add-type-shadow 'foo 'foo-g)

;;------------------------------------------------------------
;; Tests


(5am:def-test shadowing-0 (:suite name-shadowing-tests)
  (finishes-p
   (compile-vert (&uniform (x foo)) :450 nil
     (v! 0 0 0 0))))
