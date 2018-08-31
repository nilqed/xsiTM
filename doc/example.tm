<TeXmacs|1.99.6>

<style|generic>

<\body>
  <\session|xsi|default>
    <\output>
      SciOS XSI/CLIPS V 2.1 -- TeXmacs mode
    </output>

    <\unfolded-io>
      :\ 
    <|unfolded-io>
      (xsi-version)
    <|unfolded-io>
      2.1
    </unfolded-io>

    <\unfolded-io>
      :\ 
    <|unfolded-io>
      (tex "-\\\\frac{\\\\hbar^2}{2m}\\\\Delta\\\\psi+V(x)\\\\psi=E\\\\psi")
    <|unfolded-io>
      -<frac|\<hbar\><rsup|2>|2m>\<Delta\>\<psi\>+V(x)\<psi\>=E\<psi\>
    </unfolded-io>

    <\unfolded-io>
      :\ 
    <|unfolded-io>
      (tex "$$\\\\int_\\\\Omega\\\\ d\\\\,\\\\omega=\\\\int_{\\\\partial\\\\Omega}\\\\
      \\\\omega$$")
    <|unfolded-io>
      <\equation*>
        <big|int><rsub|\<Omega\>>d*<space|0.17em>\<omega\>=<big|int><rsub|\<partial\>*\<Omega\>>\<omega\>
      </equation*>
    </unfolded-io>

    <\unfolded-io>
      :\ 
    <|unfolded-io>
      (html "\<less\>b\<gtr\>This is HTML code")
    <|unfolded-io>
      <html-text|<with|font-series|bold|This is HTML code>>
    </unfolded-io>

    <\unfolded-io>
      :\ 
    <|unfolded-io>
      (scm "(define X 1)")
    <|unfolded-io>
      <define|X|1>
    </unfolded-io>

    \;

    <\input>
      :\ 
    <|input>
      (deffunction tm-msg (?left ?right ?len)

      \ \ \ \ \ \ \ \ "Write to TeXmacs status bar: str_left str_right
      int_duration [ms]"

      \ \ \ \ \ \ \ \ (cmd (str-cat\ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ "(set-temporary-message \\"" ?left "\\"
      \\"" ?right "\\" " ?len ")")))

      \;
    </input>

    <\input>
      :\ 
    <|input>
      (tm-msg "message left" "message right" "2000") ;;; watch the status bar
    </input>

    <\input>
      :\ 
    <|input>
      (tm-msg "abc" "123" "5000")
    </input>

    <\unfolded-io>
      :\ 
    <|unfolded-io>
      (assert (number1 1234))
    <|unfolded-io>
      \<less\>Fact-1\<gtr\>
    </unfolded-io>

    <\unfolded-io>
      :\ 
    <|unfolded-io>
      (assert (number2 5678))
    <|unfolded-io>
      \<less\>Fact-2\<gtr\>
    </unfolded-io>

    <\unfolded-io>
      :\ 
    <|unfolded-io>
      (facts)
    <|unfolded-io>
      f-0 \ \ \ \ (initial-fact)

      f-1 \ \ \ \ (number1 1234)

      f-2 \ \ \ \ (number2 5678)

      For a total of 3 facts.
    </unfolded-io>

    <\input>
      :\ 
    <|input>
      (defrule add (number1 ?X) (number2 ?Y) =\<gtr\> (assert (sum (+ ?X
      ?Y))))
    </input>

    <\unfolded-io>
      :\ 
    <|unfolded-io>
      (rules)
    <|unfolded-io>
      add

      For a total of 1 defrule.
    </unfolded-io>

    <\unfolded-io>
      :\ 
    <|unfolded-io>
      (agenda)
    <|unfolded-io>
      0 \ \ \ \ \ add: f-1,f-2

      For a total of 1 activation.
    </unfolded-io>

    <\input>
      :\ 
    <|input>
      (run)
    </input>

    <\unfolded-io>
      :\ 
    <|unfolded-io>
      (facts)
    <|unfolded-io>
      f-0 \ \ \ \ (initial-fact)

      f-1 \ \ \ \ (number1 1234)

      f-2 \ \ \ \ (number2 5678)

      f-3 \ \ \ \ (sum 6912)

      For a total of 4 facts.
    </unfolded-io>

    <\input>
      :\ 
    <|input>
      (reset)
    </input>

    <\input>
      :\ 
    <|input>
      (defclass Set (is-a INITIAL-OBJECT))
    </input>

    <\input>
      :\ 
    <|input>
      (defclass Cartesian-product (is-a Set)

      \ \ (multislot factors (type INSTANCE)))
    </input>

    <\unfolded-io>
      :\ 
    <|unfolded-io>
      (make-instance A of Set)
    <|unfolded-io>
      [A]
    </unfolded-io>

    <\unfolded-io>
      :\ 
    <|unfolded-io>
      (make-instance B of Set)
    <|unfolded-io>
      [B]
    </unfolded-io>

    <\unfolded-io>
      :\ 
    <|unfolded-io>
      (make-instance C of Cartesian-product (factors [A] [B]))
    <|unfolded-io>
      [C]
    </unfolded-io>

    <\unfolded-io>
      :\ 
    <|unfolded-io>
      (instances)
    <|unfolded-io>
      [initial-object] of INITIAL-OBJECT

      [A] of Set

      [B] of Set

      [C] of Cartesian-product

      For a total of 4 instances.
    </unfolded-io>

    <\unfolded-io>
      :\ 
    <|unfolded-io>
      \ (send [C] get-factors)
    <|unfolded-io>
      ([A] [B])
    </unfolded-io>

    <\unfolded-io>
      :\ 
    <|unfolded-io>
      (exit)
    <|unfolded-io>
      <script-busy>
    </unfolded-io>

    <\input>
      :\ 
    <|input>
      \;
    </input>
  </session>
</body>