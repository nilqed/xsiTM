(defglobal ?*math-opt* = 0)
(defglobal ?*lib-path* = 
   "C:/Users/scios/AppData/Roaming/TeXmacs/plugins/xsi/src/")

(deffunction tm-msg (?left ?right ?len)
	"Write to TeXmacs status bar: str_left str_right int_duration [ms]"
	(cmd (str-cat 
		"(set-temporary-message \"" ?left "\" \"" ?right "\" " ?len ")")))

(deffunction math: (?x)
	"Handle math input"
	(switch ?*math-opt*
		(case 0 then  
			(assert-string (str-cat "(math: " ?x ")"))
			(tm-msg ?x "asserted" 5000)
			(run)
      (return ?x))
		(default (return ?x))))

(load* (str-cat ?*lib-path* "facts1.clp"))
(load* (str-cat ?*lib-path* "rules1.clp"))
