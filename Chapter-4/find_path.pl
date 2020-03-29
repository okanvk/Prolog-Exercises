

link(a,b).
link(b,d).
link(d,e).
link(c,f).
link(d,f).
link(a,c).
link(c,d).
link(f,a).

list([]).

list([_|Rest]) :- list(Rest).

conc([],L,L).

conc([X|Rest1],Y,[X|Rest2]) :- conc(Rest1,Y,Rest2).


% Depth First Search
path(Node,Node,[Node]).

path(StartNode,EndNode,[StartNode|Rest]) :- link(StartNode,NextNode),path(NextNode,EndNode,Rest). 



%Breadth First Search

% conc(Path,_,_),path(a,c,Path).
% ask
% list(Path),path(a,c,Path)
% same as
% path(a,c,[_,_]).