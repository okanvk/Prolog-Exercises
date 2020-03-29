


hanoi(1,A,_,C,[A->C]).

hanoi(N,A,B,C,Moves) :-
  N > 1,
  M is N -1,
  hanoi(M,A,C,B,Moves1),
  append(Moves1,[A->C],Moves2),
  hanoi(M,B,A,C,Moves3),
  append(Moves2,Moves3,Moves).

  