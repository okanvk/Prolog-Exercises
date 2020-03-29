

append1([],L,L).

append1([Head1|Rest1],Rest2,[Head1|L]) :- append(Rest1,Rest2,L).

% Declarative'i görselleştirme ile yap.



reverse1([],[]).

reverse1([X|Xs],R) :- reverse(Xs,RXs),append1(RXs,[X],R).


list([]).

list([X|Rest]) :- list(Rest).


%proc5(X,[],[X]).

%proc5(X,[Y|R1],[Y|R]) :- proc5(X,R1,R).
