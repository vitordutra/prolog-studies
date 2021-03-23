gago([A],[A]):-!.
gago([A,A|L],L2):-gago([A|L],L2),!.
gago([A,B|L],[A|L2]):-gago([B|L],L2).


% inserir em uma lista ordenada
%inserir(8,[3,6,9,10],X) => X=[5,6,8,9,10]

inserir(A,[],[A]):-!.
inserir(A,[B|L],[A,B|L]):-A=<B,!.
inserir(A,[B|L],[B|L2]):-inserir(A,L,L2).

%inserir(4,[6,7,10],X) => X=[4,6,7,10]

% ordenar
% ordenar([5,1,4,9,0],X) => X=[0,1,4,5,9]
