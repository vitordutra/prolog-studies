% Concatenate elements of a list
conc([],L,L) :- !.
conc([A|L],L2,[A|L3]) :- conc(L,L2,L3).
