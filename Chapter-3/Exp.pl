

bas([]).

bas([Head|List]) :-
  writeln(Head),
  bas(List).




member(X,[X|Tail]).

member(X,[Head|Tail]) :- member(X,Tail).

% member(X,[a,b,c]) X  ne olabilir ?
% X = a
% X = b
% X = c

% member(apple,L) apple L'nin içinde nasıl bulunabilir ?
%L = [apple|_3908] ;
%L = [_3906, apple|_3914] ;
%L = [_3906, _3912, apple|_3920] ;
%L = [_3906, _3912, _3918, apple|_3926]


% Concatenation


concat([],L3,L3).

concat([X|L1],L2,[X|L3]) :- concat(L1,L2,L3).


% conc([1,2,3],[4,5],L) L = [1,2,3,4,5]

% conc(L1,L2,[a,b,c])
% Ne gibi olasılıklar olabilir
%L1 = [],
%L2 = [a, b, c] ;
%L1 = [a],
%L2 = [b, c] ;
%L1 = [a, b],
%L2 = [c] ;
%L1 = [a, b, c],
%L2 = [] ;



% concat(X,[c|After],[a,b,c,d,e]).
% X = [a, b],
% After = [d, e]


%?- concat(_,[X1,c,X2|After],[a,b,c,d,e]).

%X1 = b,
%X2 = d,

%After = [e] ;

another_member(X,L) :- concat(_,[X|_],L).

%without conc
last(X,[X|[]]).

last(X,[Head|Tail]) :- last(X,Tail).

%with conc ?



% add item
add(X,L,[X|L]).





