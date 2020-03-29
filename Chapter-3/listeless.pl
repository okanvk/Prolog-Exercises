
list([]).

list([_|Rest]) :- list(Rest).


member2(X,[X|_]).

member2(X,[_|Tail]) :- member2(X,Tail). 


prefix([],L) :- list(L).

prefix([X|Rest1],[X|Rest2]) :- prefix(Rest1,Rest2).

%?- prefix([a,b,c,d,e],[a,b,c,d]).
%false.

%?- prefix([a,b,c,d],[a,b,c,d]).
%true.



suffix(L,L).

suffix(L,[_|Rest2]) :- suffix(L,Rest2).

sublist1(Xs,Ys) :- prefix(Ps,Ys),suffix(Xs,Ps).



append1([],L,L).

append1([Head1|Rest1],Rest2,[Head1|L]) :- append(Rest1,Rest2,L).

% Declarative'i görselleştirme ile yap.



reverse1([],[]).

reverse1([X|Xs],R) :- reverse(Xs,RXs),append(RXs,[X],R).



% Reverse with accumulator.




reverse2([],[]).

reverse2([Head|Tail],R) :- reverse(Tail,L),append(L,[Head],R). 


decrease([],[]).

decrease([A|Rest1],[A|Rest2]) :- decrease(Rest1,Rest2).

palindrome(A,B) :- reverse(A,X),decrease(B,X).


% Substract Division
% Towers of hanoi
% Fibonacci

