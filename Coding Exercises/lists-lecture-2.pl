cabeca([A|_],A):-!.

ultimo([A],A):-!.
ultimo([_|L],B) :- ultimo(L,B).

tamanho([],0):-!.
tamanho([_|L],T) :- tamanho(L,T1),
                    T is T1+1.

conc([],L,L):-!.
conc([A|L],L2,[A|L3]):- conc(L,L2,L3).

somar([],0):-!.
somar([A|L],S):-somar(L,S1),
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


mult(_,[],[]):-!.
mult(X,[A|L],[A1|L1]):- mult(X,L,L1), A1 is A*X.

somar(_,[],[]):-!.
somar(X,[A|L],[A1|L1]):- somar(X,L,L1), A1 is A+X.

% concatenar - OK
% reverter([a,b,c,d],X)     -> [d,c,b,a]
% tirar_ultimo([a,b,c,d],X) -> X=[a,b,c]
% palindromo([a,b,b,a])     -> True
