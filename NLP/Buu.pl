initial(q0).
final(q3).
final(q4).

t(q0,a,q1).
t(q0,ı,q1).
t(q0,o,q1).
t(q0,u,q1).

t(q0,e,q2).
t(q0,i,q2).
t(q0,ö,q2).
t(q0,ü,q2).

t(q1,a,q3).
t(q1,ı,q3).
t(q1,o,q3).
t(q1,u,q3).

t(q1,e,qf).
t(q1,i,qf).
t(q1,ö,qf).
t(q1,ü,qf).

t(q2,a,qf).
t(q2,ı,qf).
t(q2,o,qf).
t(q2,u,qf).

t(q2,e,q4).
t(q2,i,q4).
t(q2,ö,q4).
t(q2,ü,q4).

t(q3,a,q3).
t(q3,ı,q3).
t(q3,o,q3).
t(q3,u,q3).

t(q3,e,qf).
t(q3,i,qf).
t(q3,ü,qf).
t(q3,ö,qf).

t(q4,a,qf).
t(q4,ı,qf).
t(q4,o,qf).
t(q4,u,qf).

t(q4,e,q4).
t(q4,i,q4).
t(q4,ö,q4).
t(q4,ü,q4).

t(qf,a,qf).
t(qf,ı,qf).
t(qf,o,qf).
t(qf,u,qf).
t(qf,e,qf).
t(qf,i,qf).
t(qf,ö,qf).
t(qf,ü,qf).

t(X,A,X) :- consonant(A).

consonant(b).
consonant(c).
consonant(ç).
consonant(d).
consonant(f).
consonant(g).
consonant(ğ).
consonant(h).
consonant(j).
consonant(k).
consonant(l).
consonant(m).
consonant(n).
consonant(p).
consonant(r).
consonant(s).
consonant(ş).
consonant(t).
consonant(v).
consonant(y).
consonant(z).

traverse(String):- initial(State),
                   traverse(String,State).

traverse('', State):- final(State).

traverse(String, CurrentState) :- 
                                  concat(First,Rest,String),
                                  t(CurrentState, First, NextState),
                                  traverse(Rest,NextState).

