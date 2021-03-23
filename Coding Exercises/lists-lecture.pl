cabeca([A|_],A):-!.

ultimo([A],A):-!.
ultimo([_|L],B) :- ultimo(L,B).

tamanho([],0):-!.
tamanho([_|L],T) :- tamanho(L,T1),
                    T is T1+1.

conc([],L,L):-!.
conc([A|L],L2,[A|L3]):- conc(L,L2,L3).

soma([],0):-!.
soma([A|L],S):-soma(L,S1),
               S is S1+A.

oco(_,[],0):-!.
oco(A,[A|L],R):-oco(A,L,R1),
                R is R1+1,!.
oco(A,[_|L],R):-oco(A,L,R).

subs(_,_,[],[]):-!.
subs(A,B,[A|L],[B|L2]):-subs(A,B,L,L2),!.
subs(A,B,[C|L],[C|L2]):-subs(A,B,L,L2).

deletar(_,[],[]):-!.
deletar(A,[A|L],L2):-deletar(A,L,L2),!.
deletar(A,[B|L],[B|L2]):-deletar(A,L,L2).


% mult(3,[5,1,8],X)  ->  [15,3,24]
