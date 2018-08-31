(defglobal ?*obj* = (create$ set ) )

(defrule Let-x-be-a-y
  ?f1<-(math: Let ?X be a ?Y @dot)
  (not (var ?X))
  (test (member$ ?Y ?*obj*))
 =>
  (assert (var ?X))
  (assert (isa ?X ?Y))
  (retract ?f1))
