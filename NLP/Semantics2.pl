:- op(1100,xfy,'==>').
:- op(1100,xfy,'=>').

%%% Grammar
% Lexicon
d(f) => [fido].
d(p) => [pumpkin].
v(X^bark(X)) => [barks].
v(Y^X^(chase(X,Y))) => [chases].


% Phrase Structure Rules
tp(SEM) ==> dp(X), t1(X^SEM).
t1(SEM) ==> vp(SEM).
vp(SEM) ==> v(SEM).
vp(SEM) ==> v(Y^SEM), dp(Y).
dp(SEM) ==> d(SEM).


% Shift-Reduce Parser
% Base
sr_parse([C],[],SEM):- C =.. [_|[SEM]].

% Shift
sr_parse(Stack,[Word|Words],C):-
  (Cat => [Word]),
  sr_parse([Cat|Stack],Words,C).
  
% Reduce
sr_parse([X|Rest],String,C):-
  (Y ==> X),
  sr_parse([Y|Rest],String,C).
  
sr_parse([Y,X|Rest],String,C):-
  (Z ==> X, Y),
  sr_parse([Z|Rest],String,C).