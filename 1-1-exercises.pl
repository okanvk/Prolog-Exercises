parent(pam,bob).
parent(tom,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).


    /** Who is Pat's parent ? */
      
    /** Answer:   parent(X,pat). (Bob) */
    
    /** 2.Does Liz have a child ? */
      
    /** Answer:  parent(liz,X). (False) */

    /** 3.Who is Pat's grandparent ? */
    
    /** Answer : parent(X,Y),parent(Y,pat). (X = Tom or X = Pam) (Y = Bob) */

