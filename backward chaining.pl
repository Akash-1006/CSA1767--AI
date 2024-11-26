% Define some facts
parent(john, mary).
parent(mary, alice).
parent(alice, bob).

% Define some rules
grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).

ancestor(X, Y) :-
    parent(X, Y).
ancestor(X, Y) :-
    parent(X, Z),
    ancestor(Z, Y).

% Query example to find if John is a grandparent of Bob
% ?- grandparent(john, bob).
% Output: true.

% Query example to find all ancestors of Bob
% ?- ancestor(X, bob).
% Output: X = john ;
%         X = mary ;
%         X = alice.
