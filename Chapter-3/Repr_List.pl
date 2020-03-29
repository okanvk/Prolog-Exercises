



member(X,[X|Tail]).

member(X,[Head|Tail]) :-
          member(X,Tail). 

% Dict = [p(one,uno),p(two,dos),p(three,tres)],member(p(two,Sp),Dict). %


% Concatenation

conc([],L,L).

conc([X|L1],L2,[X|L3]) :- conc(L1,L2,L3).

% conc([1,2],[a,b],R). R -> [1,2,a,b]


% conc(Before,[may|After],[jan,feb,mar,apr,may,jun,jul,aug,sep,oct,nov,dec]).
% Before = [jan, feb, mar, apr],
% After = [jun, jul, aug, sep, oct, nov, dec] .

% Tail Liste olması zorunluyken
% Head herhangi bir şey olabilir Structure,Atom,List


%conc(_,[Month1,may,Month2|_],[jan,feb,mar,apr,may,jun,jul,aug,sep,oct,nov,dec]).
% Month1 = apr Month2 = jun


%conc(L1,[c,d,e],[a,b,c,d,e]). Delete Last Three Elements from a list


% Delete First and Last 3 elements from a list L ?

% Last Relation
last(Last,[Last|[]]).

last(Last,[Head|Tail]) :- last(Last,Tail).


