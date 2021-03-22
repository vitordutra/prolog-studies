% Fatos (Facts) precisam estar em minúsculo
% Conjunto de fatos: base de dados
gerou(kelly, maria).
gerou(cleber, maria).
gerou(cleber, bruna).
gerou(maria, julia).
gerou(maria, pedro).
gerou(pedro, lucas).


% Quem cleber gerou?
% gerou(cleber, X).

% Quem é pai de maria?
% gerou(X, maria).

% Pergunta: quem gerou quem?
% gerou(X,Y).
% X: pai, Y, filho.

% Julia e pedro são irmãos.
% Quem é pai de julia e pedro?
% gerou(X, julia), gerou(X, pedro).
% caractere , equivale ao AND

% Avós de pedro
% gerou(X,Y), gerou(Y,pedro).
% X -> Y -> pedro
% (cleber, kelly) -> maria -> pedro

% Netos de cleber (processo inverso)
% gerou(cleber,Y), gerou(Y,X).

% detalhando o processo
% gerou(X,Y),gerou(Y,Z) -> gerou(avo, mae), gerou(mae, filho).
% Retorna todas as possibilidades
