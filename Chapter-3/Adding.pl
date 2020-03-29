


add(X,L,[X|L]).

del(X,[X|Tail],Tail).

del(X,[Y|Tail],[Y|Tail1]) :- del(X,Tail,Tail1).


% del(b,[a,b,c],X).
% X = [a,c].

% del(a,L,[1,2,3]).
% L = [a,1,2,3].
% L = [1,a,2,3].
% L = [1,2,a,3].
% L = [1,2,3,a].


insert(X,List,BiggerList) :- del(X,BiggerList,List).