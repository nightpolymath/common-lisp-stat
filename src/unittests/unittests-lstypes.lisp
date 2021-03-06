;;; -*- mode: lisp -*-

;;; File:       unittests-lstypes.lisp
;;; Author:     AJ Rossini <blindglobe@gmail.com>
;;; Copyright:  (c)2008, AJ Rossini.
;;; License:    BSD, see LICENSE.BSD file for details.
;;; Purpose:    unit-tests for lispstat typing.
;;; Time-stamp: <2009-04-02 16:13:25 tony>
;;; Creation:   <2008-05-09 14:16:56 tony>

;;; What is this talk of 'release'? Klingons do not make software
;;; 'releases'.  Our software 'escapes', leaving a bloody trail of
;;; designers and quality assurance people in its wake.

(in-package :lisp-stat-unittests)

(deftestsuite lisp-stat-ut-types (lisp-stat-ut) ())

(addtest (lisp-stat-ut-types) check-one-nonneg-fixnum1
	 (ensure-error
	   (check-one-nonneg-fixnum -3))
	 (ensure
	  (= 3
	     (check-one-nonneg-fixnum 3))))

(addtest (lisp-stat-ut-types) check-nonneg-fixnum1
	 (ensure
	  ;; (check-one-nonneg-fixnum 3) => 3
	  (= 3
	     (check-nonneg-fixnum 3))))

(addtest (lisp-stat-ut-types) check-nonneg-fixnum2
	 (ensure
	  ;; (check-one-nonneg-fixnum 3) => 3
	  (equal (list 1 2 3)
		 (check-nonneg-fixnum (list 1 2 3)))))

;;; check-nonneg-fixnum

(addtest (lisp-stat-ut-types) check-nonneg-fixnum1
	 (ensure
	  (= 3
	     (check-nonneg-fixnum 3))))

(addtest (lisp-stat-ut-types) check-nonneg-fixnum2
	 (ensure
	  (equal (list 1 2 3)
		 (check-nonneg-fixnum (list 1 2 3)))))

(addtest (lisp-stat-ut-types) check-nonneg-fixnum3
	 (ensure-error
	   (check-nonneg-fixnum -3)))

(addtest (lisp-stat-ut-types) check-nonneg-fixnum4
	 (ensure-error
	   (check-nonneg-fixnum (list 1 2 -3))))

;;; 
;; (run-tests :suite 'lisp-stat-ut-types)
;; (describe (run-tests :suite 'lisp-stat-ut-types))
