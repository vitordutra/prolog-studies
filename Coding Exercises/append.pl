append([ ], L, L).
append([X|L1], L2, [X|L3]) :- append(L1, L2, L3).

append2([], L2, L2).
append2([H|T], L2, [H|L3]) :- append2(T,L2,L3).

append3([], L2, L2).
append3(L1, L2, L3) :- L1 = [] append(L1, L2, L3).

append2([1, 2, 3], [a, b], X).
