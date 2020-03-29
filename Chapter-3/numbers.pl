
%Base Clause
natural_number(0).

%Recursive Clause
natural_number(N) :- M is N-1,natural_number(M).

% 


%add(X,0) :- writeln(X).

%add(X,Y) :- M is Y-1, Z is X+1 ,add(Z,M).

%
%   Exponential (Üs alma)
%   Ackermann Function Prolog procedure
%


add2(0,X,X).

add2(X,Y,Z) :- X>0,M is X-1,N is Z-1,add2(M,Y,N).



add(0,N,N).

add(X,Y,R) :- M is X -1,
              add(M,Y,P),
              R is P+1.



