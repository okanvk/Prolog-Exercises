
/*

f(1,one).
f(s(1),two).
f(s(s(1)),three).
f(s(s(s(X))),N) :- f(X,N).


*/


repr(1,bir).
repr(2,iki).
repr(3,uc).

translate(Number,Word) :-
  repr(Number,Word).




/*
ancestor(pam,bob).
ancestor(tom,bob).
ancestor(tom,liz).
ancestor(bob,ann).
ancestor(bob,pat).
ancestor(pat,jim).

relatives(X,Y) :- ancestor(X,Y);ancestor(Y,X).


relatives(X,Y) :- (ancestor(Z,X),ancestor(Z,Y));(ancestor(X,Z),ancestor(Y,Z)).
*/

/*

num(1,one).
num(2,two).
num(3,three).


translate(Number,Word) :-
  num(Number,Word).
*/

/*

a(X,Y) :- b(X,Y);c(X,Y).

b(1,3).
c(1,2).

*/

/*

P :- (Q,R);(S,T,U).

  P is true if:
    Q and R true
        OR
    S and T and U true


    it can be

  P :- Q,R.
  P :- S,T,U.

*/

%repr(1,one).
%repr(2,two).
%repr(3,three).


%translate(Number,Word) :-
%  repr(Number,Word).