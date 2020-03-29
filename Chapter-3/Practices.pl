%%%Natural Number
%Base Clause
natural_number(0).

%Recursive Clause
natural_number(N) :- N >0,
                     M is N-1, 
                     natural_number(M).

%%%Addition
%base

add(0,N,N) :- natural_number(N).

%recursion
add(N,M,K) :- natural_number(N),
            T is N-1,
            add(T,M,P),
            K is P+1.

%Multiplication
%base
mult(1,N,N) :- natural_number(N).
mult(0,N,0) :- natural_number(N).

%recursion
mult(N,M,R) :-
            natural_number(N),
            T is N-1,
            mult(T,M,K),
            add(K,M,R).
            
% üst alma 20 puan

exp(N,1,N) :- natural_number(N).

exp(0,N,0) :- natural_number(N).

%exp(N,0,1) :- natural_number(N).




exp(X,Y,R) :-
          M is Y -1,
          exp(X,M,L),
          mult(X,L,R).

        % Declarative olarak belirtmek için
        % X'in üssü Y  R' olması için Öyle bir sayı vardır ki Y  nin 1 eksiği gibi vs.
        % Amsterdam üniversitesine türkçe karakter sorunun bildirelim.




