delete_elem(_,[ ],[ ]) :- !.
delete_elem(E, [E|L], Lr) :-
                            delete_elem(E,L,Lr), !.
delete_elem(E, [H|L], [H|Lr]) :-
                                delete_elem(E,L,Lr).

% Test: delete_elem(a, [a,b,r,a,c,a,d,a,b,r,a], L).
% Output: L = [b, r, c, d, b, r].
