% loves: predicate
% romeo, juliet: atoms -> constants.
loves(romeo, juliet).

loves(juliet, romeo) :-
    loves(romeo, juliet).

% ---------- RULES ----------

% Rules are used when you want to say that a fact depends on a group of facts

% NOTE : You'll get the discontiguous predicate warning if you

% don't keep your predicates together
happy(albert).
happy(alice).
happy(bob).
happy(bill).
with_albert(alice).

runs(albert) :-
    happy(albert).


dances(alice) :-
    happy(alice),
    with_albert(alice).

does_alice_dance :-
    dances(alice),
    write('When Alice is happy and with Albert she dances').


/*swims(bob) :-
    happy(bob),
    near_water(bob).*/
swims(bill) :-
    happy(bill).

swims(bill) :-
    near_water(bill).

