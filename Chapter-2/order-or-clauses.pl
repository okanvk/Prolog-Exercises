
/*

    All the variations will clearly have the same declarative meaning,but not the same procedural meaning.

    According to the declarative semantics of prolog we can, withouht affecting the declarative meaning,change.

    1: The order of clauses in the program.
    2: The order of goals in the bodies of clauses.


      (Procedure OR Rule ?)
  The ancestor procedure consists of two clauses and one of them has two goals in the body.


    Burada clauseların yeri ve sırası değiştiğinde 4 farklı durum çıkıyor ortaya,bazı durumlarda infinte loopa gidip 
    patlıyabiliriz,bundan dolayı "Try simple things first" mantığı ile çalışmak daha doğru
    En başa body içinde clause az ve rahat bulunabilirlikleri bulmak daha iyi olacaktır.
*/

parent(pam,bob).
parent(tom,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).

ancestor(Parent,Child) :-
  parent(Parent,Child).

ancestor(Ancestor,Successor) :-
    parent(Ancestor,Child),
    ancestor(Child,Successor).



ancestor1(Parent,Child) :-
  parent(Parent,Child).

ancestor1(Ancestor,Successor) :-
    parent(Ancestor,Child),
    ancestor1(Child,Successor).



ancestor2(Parent,Child) :-
  parent(Parent,Child).

ancestor2(Ancestor,Successor) :-
    parent(Ancestor,Child),
    ancestor2(Child,Successor).



ancestor3(Parent,Child) :-
  parent(Parent,Child).

ancestor3(Ancestor,Successor) :-
    parent(Ancestor,Child),
    ancestor3(Child,Successor).
