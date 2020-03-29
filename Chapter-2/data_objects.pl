
/*

  simple data objects(atoms,numbers,variables)
  structured objects
  matching
  declarative - meaning of a program
  procedural meaning of a program
  relation between declarative and procedural meanings of a program


*/

/*
    Atoms and Numbers

    Atoms can take more complicated forms strings

    Atoms can be constructed in three ways

      1: 
        String Of Letters,digits,underscore_character
          anna, nil, x25, x_25, x_, x__y, miss_jones
      2:
        String of special characters
          <--->, +, ... , ::=
        Böyle kullanırken dikkatli olunması gerek önceden bazı ifadeler tanımlanmış olabilir(:-)
      3:
        String of characters enclosed in single quotes,this is useful if we want for example:
        to have an atom that starts with a capital letter.By enclosing it in quotes,
        we make it distinguishable from variables. 
        'Tom', 'Sarah Jones'

    Numbers
      İşlem yaparken virgüllü sayıları yuvarlıyabilir dikkat et
    

*/


/*
    Variables

    Variables are strings of letters,digits and underscore characters.
    They  start with an upper-case letter or an underscore character

    X, Result, Object2, _A, _x23,_23


  Bir ilişki kurduğumuzu varsayalım,
  
  has_a_child(X) :- parent(X,Y).

  Burada bulunan Y değişkeni başka clauselarda kullanmıyacaksak, anonymous variable olarak değiştirebiliriz.

  has_a_child(X) :- parent(X,_).

  has_a_child ilişkisi Y değişkenine bağlı olup sonradan kullanılmadığından anonymouse variable kullandık.

  visible(Object) :- see(Object,_,_) as same as visible(Object) :- see(Object,X,Y)
  Eğer X ve Y alanları lazımsa sonda ki değilse, başta ki kullanılabilir.

  If we interest who has children,but not interest names of children we can say;
  parent(X,_).

*/


/*
        Structures

      Structures are objects that have several components.

      Ex: Date can be viewed as a structures with three components.(day,month,year)

      Yapılar çok içerik barındırmasına rağmen tek bir basit obje gibi davranır.

      Functor -> Bağımlı Yapı Biçimi 
      A suitable functor for our example is date
      Ex:
      1 May 2001
      date(1,may,2001).
      3 constants -> 2 numbers,1 atom

      Components can also be variables or other structures.
      Any day in May can be like this
      date(Day,may,2001).

      Syntactically,all data objects in prolog are terms.


*/

/*

  Each functor is defined by two things:

  The Name : whose syntax is that of atoms.
  The Arity :  That is,number of arguments.

  foo(a) and foo(a,b) have different functors, foo/1 and foo/2. 
  Programda verilen argüman sayısına göre functor'ın davranışını değiştirebiliriz.
  http://www.amzi.com/manuals/amzi/pro/ref_terms.htm#Structures

  Prolog'da her bir (structure)yapı ağaç olarak gösterilebilir.
  In prolog every data object is a term.



  

*/



/*

Structures are used to represent data.
Following are some examples of a structure whose functor is 'likes' and whose arity is 2.

likes(ella, biscuits)
likes(zeke, biscuits)
likes(Everyone, pizza)


Here are some more complex nested structures.

file(foo, date(1993, 6, 15), size(43898))
tree(pam, left( tree( doyle, left(L2), right(R2) ) ), right(R1))
sentence( nounphrase( det( the ), noun( dog )), verbphrase( verb( sleeps )) )

Structures are also the heads of Prolog clauses, and the goals of the bodies of those clauses. For example:

friends(X, Y) :- likes(X, Something), likes(Y, Something).
All Prolog really does is match up structures with each other





*/

parent('Bulent','Okan').
parent('Zamine','Okan').


a(b(deneme)).
/*

parent(X,_).

Anyone who has children.

*/