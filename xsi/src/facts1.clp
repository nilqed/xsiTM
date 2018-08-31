(deffacts sets 
  "basic sets"
  (set @emptyset)
  (set @NN)
  (set @ZZ)
  (set @QQ)
  (set @RR)
  (set @CC))
  
(deffacts subsets
  "subset relations"
  (subset @NN @ZZ)
  (subset @ZZ @QQ)
  (subset @QQ @RR)
  (subset @RR @CC))
  


  