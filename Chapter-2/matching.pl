
/*

date(D,M,2001) = date(D1,may,Y1).

D = D1
M = may
Y1 = 2001

can easily match

otherwise
date(D,M,2001) = date(D1,M1,1444).

don't match because third argument 2001 and 1444 don't match.

date(X,Y,Z) = point(X,Y,Z)

don't match because functor names are different.


date(D,M,2001) = date(D1,may,Y1),date(D,M,2001) = date(15,M,Y).

D = D1, D1 = 15, M = may, Y1 = Y, Y = 2001


Matching Rules:

  (Structure)
  If S and t ARE STRUCTURES THEN THEY MATCH ONLY İF:
    S and T have the same principal functor,
    All their corresponding components match.

  (Constant)
  If S and T are constatns then S and T match only if they are the same object and 


  (Variable)
  If S variable and T is anything,then they match,and S is instantiated to T, or T variable , S is anything then vice-versa
 

*/


/*


EX

    triangle = triangle,point(1,1) = X,A = point(4,Y),point(2,3)=point(2,Z).

    X = point(1,1) : At this point X instantiated to Structure.

    A = point(4,Y) : At this point A instantiated to Structue

    point(2,3) = point(2,Z) : They have same functor,and 2=2  AND 3 = Z so Z is 3.


*/


vertical(seg(point(X1,Y1),point(X1,Y2))).
horizontal(seg(point(X1,Y1),point(X2,Y1))).


/*
vertical(seg(point(1,1),point(1,2))).
True : Because first point first argument and second point first argument satisfy


horizontal(seg(point(1,2),point(1,Z))).
Z should be 2 because Z instead of Y1 and first structure has Y1 value 2.

Are there any vertical segments that start at the point (2,3) ?

vertical(seg(point(2,3),P)).

answer : point(2,_912). _912 means can be anything in second argument but first argument must 2.

Is there a segment that is both vertical horizontal

vertical(seg(point(X,Y),point(X,Y))).
  
  True.


*/


/*
    Exercises

    point(A,B) = point(1,2).
A = 1,
B = 2.

point(X,Y,Z) = point(A,B). (Arity count not equal)


+(2,D) = +(E,2).
D = E, E = 2.

+ can also be a functor name


triangle(point(-1,0),P2,P3) = triangle(P1,point(1,0),point(0,Y)).

P2 = point(1, 0),
P3 = point(0, Y),
P1 = point(-1, 0).

vertical(seg(point(5,Y1),point(5,Y2))). Write a term that represents any vertical line segment at x = 5
*/


rectangle(regular(X,Y),regular(X,Y),regular(X,Y),regular(X,Y)). /* ? */



