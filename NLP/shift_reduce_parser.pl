:- op(1100,xfy,'==>'). % direktif tanımlıyoruz
:- op(1100,xfy,'=>'). 

n => [dogs].
n => [bones].
adj => [black].
adj => [big].
adj => [furry].
v => [bark].
v => [eat].
v => [eating].
adv => [loudly].
adv => [quickly].
d => [the].
d => [a].
t => [are].
t => [do].

tp ==> dp, tbar.
tbar ==> t,vp.
tbar ==> t,adjP.
tbar ==> t,dp.
tbar ==> vp.
np ==> n.
np ==> adjP,np.
vp ==> v.
vp ==> v,dp.
vp ==> vp,advP.
vp ==> advP,vp.
advP ==> adv.
adjP ==> adj.
dp ==> d,np.
dp ==> np.




% Base Condition
sr_parser([tp],[]).

% Shift Phase
sr_parser(Stack,[Word|Rest]) :-
    (Cat => [Word]),
    sr_parser([Cat|Stack],Rest).

% Reduce Phase

sr_parser([X|Rest_Of_Stack],String) :-
    (Y ==> X),
    sr_parser([Y|Rest_Of_Stack],String).

sr_parser([Y,X|Rest_Of_Stack],String) :-
    (Z ==> X,Y),
    sr_parser([Z|Rest_Of_Stack],String).
