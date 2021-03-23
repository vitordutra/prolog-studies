%
% Base de Fatos
%

homem(carlos,20).
homem(james,28).
homem(rodrigo,42).
homem(joao,32).
homem(luca,25).

mulher(maria,26).
mulher(roberta,44).
mulher(loana,26).
mulher(naira,32).


pai(davi,james).
pai(carlos, naira).
pai(james, roberto).
pai(carlos,rodrigo).
pai(roberto, lucas).
pai(lucas,mario).
pai(james, carla).
pai(mario,joao).


mae(maria,carlos).
mae(roberta,maria).
mae(loana,lucas).
mae(roberta,rodrigo).

%
% Base de Regras
%

avo(X,Y) :- pai(X,Z), pai(Z,Y).


ascendente(X,Y) :- pai(X,Y).
ascendente(X,Y) :- pai(X,Z), ascendente(Z,Y).

descendente(X,Y) :- ascendente(Y,X).

descendente(X,Y) :- pai(Y,X),!.
descendente(X,Y) :- pai(Z,X), descendente(Z,Y).
