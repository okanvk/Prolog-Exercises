

female(canan).
female(elcin).
female(merve).
female(meltem).

male(cuneyt).
male(mert).
male(murat).
male(cenk).
male(mahmut).


/*
  FOL sorularına bak

  ? grandparent(X,Y).

  (Ters E)x(Ters E)y grandparent(x,y).
*/

parent(mert,murat).
parent(mert,elcin).
parent(mert,cuneyt).
parent(canan,murat).
parent(canan,elcin).
parent(canan,cuneyt).
parent(merve,cenk).
parent(murat,cenk).
parent(meltem,mahmut).
parent(cuneyt,mahmut).



mother(X,Y) :- parent(X,Y), female(X).

father(X,Y) :- parent(X,Y), male(X).


sister(X,Y) :-  
          parent(Z,X),
          parent(Z,Y),
          female(X),
          X \= Y.

brother(X,Y) :-  
          parent(Z,X),
          parent(Z,Y),
          male(X),
          X \= Y.

sister_in_law(X,Y) :- mother(Y,N),father(M,N),sister(X,M). 


elti(X,Y) :- mother(Y,N),father(M,N),brother(M,Z),parent(Z,L),parent(X,L).