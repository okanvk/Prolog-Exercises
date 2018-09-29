female(pam).
female(liz).
female(pat).
female(ann).
male(tom).
male(bob).
male(jim).

parent(pam,bob).
parent(tom,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).


mother(X,Y) :- parent(X,Y), female(X).

grandparent(X,Z) :- 
        parent(X,Y),
        parent(Y,Z).

sister(X,Y) :-  
          parent(Z,X),
          parent(Z,Y),
          female(X),
          X \= Y.


/** Exercises */

/** 
  Everybody who has a child is happy

  happy(berkay).
    True

  happy(mert).
    False

*/

hasachild(berkay).
hasachild(zulfu).
hasachild(merve).

 happy(X) :- hasachild(X).

/** 
  For all X, if X has a child who has a sister then X has two children.


  hastwochildren(bob). 
    True

  hastwochildren(tom).
    True



*/


hastwochildren(X) :- parent(X,Y),
                     sister(Y,_).

/**

  Define the relation grandchild using the parent relation

  grandchild(jim,pat).
    False
  
  grandchild(jim,bob).
    True


*/

grandchild(X,Y) :- parent(Z,X),
                   parent(Y,Z).



/**

  Define the relation aunt(X,Y) in terms of the relations parent and sister
  aunt(ann,jim)
    True
  
  aunt(bob,pam)
    False

  aunt(liz,pat) Liz is aunt of Pat's
    True

*/

    aunt(X,Y) :- parent(Z,Y),
               sister(X,Z).
