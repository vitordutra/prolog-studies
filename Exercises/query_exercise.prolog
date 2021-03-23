% Pais(nome,capital,moeda,população)

pais(brasil,brasilia,real,210).
pais(franca,paris,euro,66).
pais(italia,roma,euro,60).
pais(alemanha,berlim,euro,82).


% cidade(nomecidade,pais).

cidade(sao_luis,brasil).
cidade(rio,brasil).
cidade(madri,espanha).
cidade(saoluis,brasil).
cidade(paris,franca).
cidade(berlim,alemanha).
cidade(munique,alemanha).
cidade(barcelona,espanha).


% pessoa(nome, pessoa,idade,sexo,cidade).

pessoa(maria,20,rio).
pessoa(joao,28,m,saoluis).
pessoa(carla,32,f,franca).

% 3.1 Quem são os franceses?

frances(X) :- pessoa(X,_,franca).
frances(X) :- pessoa(X,_I,_S,franca).

% Query: frances(X). ou pessoa(X,_,_,franca).
% Saída: X = carla

% 3.2 População do País da Carla?

pop_pais_carla(Pop) :- pessoa(carla, _, _, Pais), cidade(_, Pais), pais(Pais, _, _, Pop).

% Query: pop_pais_carla(X) ou pessoa(carla, _, _, Pais), cidade(_, Pais), pais(Pais, _, _, Pop).
% Saída: Pop = 66

% 3.3 Nome das Pessoas de Países cuja População é maior que 70 milhões.

moramaior70(P) :- pessoa(P,_,_, Cidade), cidade(Cidade, Pais), pais(Pais,_,_,Pop), Pop > 70.
moramaior70(P) :- pessoa(P, _, Cidade), cidade(Cidade, Pais), pais(Pais,_,_,Pop), Pop > 70.

% Query: moramaior70(P) ou pessoa(P,_,_, Cidade), cidade(Cidade, Pais), pais(Pais,_,_,Pop), Pop > 70. ou
% pessoa(P, _, Cidade), cidade(Cidade, Pais), pais(Pais,_,_,Pop), Pop > 70.
% Saída: P = joao ; P = maria.

