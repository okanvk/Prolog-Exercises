
/* Consider the following alternative definition of the ancestor relation */


/* Answer */
ancestor(X,Y) :- parent(X,Y).

ancestor(X,Y) :- parent(Z,Y),
                 ancestor(X,Z).