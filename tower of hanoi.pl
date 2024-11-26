hanoi(1, Source, _, Destination) :-
    write('Move top disk from '),
    write(Source),
    write(' to '),
    write(Destination),
    nl.

hanoi(N, Source, Auxiliary, Destination) :-
    N > 1, % Ensure N is greater than 1 for this rule
    M is N - 1,
    hanoi(M, Source, Destination, Auxiliary), % Move N-1 disks from Source to Auxiliary
    hanoi(1, Source, _, Destination),        % Move the nth disk from Source to Destination
    hanoi(M, Auxiliary, Source, Destination). % Move N-1 disks from Auxiliary to Destination

?- hanoi(3, left, middle, right).
Move top disk from left to right
Move top disk from left to middle
Move top disk from right to middle
Move top disk from left to right
Move top disk from middle to left
Move top disk from middle to right
Move top disk from left to right
