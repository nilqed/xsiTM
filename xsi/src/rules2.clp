(defclass @NN (is-a USER))

(defrule let-in-1 
  ?f1<-(math: Let ?x @in ?y @dot)
 =>
  (retract ?f1)
  ;(tex (str-cat $ ?x : ?y $) ))
  (make-instance ?x of ?y))

(defrule eval-cmd
	?f1<-(math: ! ?cmd)
 =>
 	(retract ?f1)
 	(eval (str-cat "(" ?cmd ")" )))


(defrule nn-plus-demo
	(math: ?x @in @NN)
	(math: ?y @in @NN)
	?f<-(math: ?x @plus ?y)
  =>
    (retract ?f)
    (tex (str-cat $ ?x + ?y "\\in" "\\mathbb{N}" $)))
    
    
    
    
;;; (load "C:/Users/scios/AppData/Roaming/TeXmacs/plugins/xsi/src/unicas.clp")
;;; load* also possible
;;; (tm-msg "Hello" "xsi" 5000)
