reverter([A],[A]):-!.
reverter([A|L],L2):-reverter(L,L3), append(L3,[A],L2).


conc([],L,L):-!.
conc([A|L],L1,[A|L2]):-conc(L,L1,L2).

%[A] [--L--] [--L1--]
%[A] [------L2------]


cabeca([A|_],A).

ultimo([A],A):-!.
ultimo([_|L],B):-ultimo(L,B).

tirar_ultimo([_],[]):-!.
tirar_ultimo([A|L],[A|L2]):-tirar_ultimo(L,L2).


%palindromo(L):-reverter(L,L).

palindromo([_]):-!.
palindromo([A,A]):-!.
palindromo([A|L]):-ultimo(L,A),
                   tirar_ultimo(L,L2),
                   palindromo(L2).

%[A] [--L--]
%[A] [---L--- A]
%[A] [--L2--][A]
%
% ?- palindromo([s,o,c,o,r,r,a,m,e,s,u,b,i,n,o,o,n,i,b,u,s,e,m,a,r,r,o,c,o,s]).
%true.

% Simplificar
%gago([b,b,b,b,b,o,l,l,l,l,a,a,a,a,a],X).
%X=[b,o,l,a]
