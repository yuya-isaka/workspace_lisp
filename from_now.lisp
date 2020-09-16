;(format t "hello world")
;;; リストの先頭にあるシンボルはオペレータ

;(setf hoge 30)
;(print hoge)

;; データ型にはこれ以外にもハッシュテーブル、配列、パス名など

;(defun hello (name)
; (format t "hello, ~a!~%" name))
;
;(hello "Yuya Isaka")

;;関数の引数には、キーワード引数、可変長引数、オプション引数

;(setf num 3)
;(if (> num 2)
;    (print 'over-three)
;    (print 'under-three))
;
;(when (> num 0)
;  (print "3より上です"))

;;(dotimes (x 5)
;;  (format t "~a " x))
;;
;;(dolist (lst '(0 1 2 3))
;;  (format t "~a " lst))

;;;(defun fizzbuzz (n)
;;;  (if (or (zerop (mod n 3))
;;;          (zerop (mod n 5)))
;;;      (progn 
;;;        (when (zerop (mod n 3))
;;;          (format t "fizz"))
;;;        (when (zerop (mod n 5))
;;;          (format t "buzz"))
;;;        (format t " "))
;;;      (format t "~a " n)))
;;
;;(dotimes (n 20)
;;  (fizzbuzz (1+ n)))


(defmacro my-when (cond &body body)
  `(if ,cond
       (progn ,@body)
       nil))

(macroexpand-1 '(my-when (> num 40)
                 (format t "40~%")
                 'over-forty))

(defpackage hoge-package
  (:use :cl))


