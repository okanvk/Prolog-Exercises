

/* Clauses */
wine(red).
wine(white).
wine(rose).
meat(beef).
meat(chicken).
meat(fish).

big(bear).
big(elephant).
small(cat).
brown(bear).
black(cat).
gray(elephant).

/* Rules */

dark(Z) :- black(Z). /* Anything black is dark. Clause.7 */

dark(Z) :- brown(Z). /* Anything brown is dark */


/*

dark(X),big(X). Who is dark and big.




    EXECUTION TRACE

    1:initial goal list : dark(X),big(X).

    2: Scan the program from top to bottom looking for a clause whose head matches the first goal dark(X). 
    Clause 7 found

    3:dark(Z) :- black(Z).
      Replace the first goal by  the instantiated body of clause 7, giving a new goal list.
        black(X),big(X).
          Scan the program to find a match with black(X). Clause 5 found black(cat). This clause has no body,
         4: So the goal list,properly instantiated shrinks to big(cat).
            Scan the program for the goal big(cat). No clause found. Therefore backtrack to step(3)
            and undo the instantiation X = cat, now the goal list is again
      Continue scanning the program below clause 5. No clause found. 
      Therefore backtrack to step 2 and contine scaning below clause 7, Clause 8 is found.
        dark(Z) :- brown(Z).

        Replace the first goal in the goal list by brown(X), giving
          brown(X),big(X).
      5: Scan the program to match brown(X) finding brown(bear),
           this clause has no body,so the goal list shrinks to big(bear)
      
      Scan the program and find clause big(bear), It has no body so the goal list shrinks empty.
      This indicates succesfull termination,and the corresponding variable X = bear




*/


