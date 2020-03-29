:- op(1100,xfy,'==>'). % direktif tanımlıyoruz
:- op(1100,xfy,'=>'). 

d => [fido].
d => [pumpkin].
v => [barks].
v => [chases].


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
dp ==> d.




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
