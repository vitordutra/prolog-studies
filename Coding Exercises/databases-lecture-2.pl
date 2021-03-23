
%

entrada(salada,12,20).
entrada(sopa,14,45).
entrada(bolinhos,10,50).

prato(peixe,45,100).
prato(file,40,180).
prato(frango,30,140).

sobremesa(sorvete,8,80).
sobremesa(petitgateau,20,100).
sobremesa(frutas,18,30).


refeicao(E,P,S,Pr,C)  :- entrada(E,P1,C1),
                         prato(P,P2,C2),
                         sobremesa(S,P3,C3),
                         Pr is  P1+P2+P3,
                         C is C1+C2+C3.


refeicaoeq(E,P,S,Pr,C) :- refeicao(E,P,S,Pr,C),
                          C >= 300,
                          C =<500.
