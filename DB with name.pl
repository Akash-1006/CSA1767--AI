dob(john, '1990-05-15').
dob(sarah, '1985-10-20').
dob(mike, '1978-03-08').
dob(emily, '1995-12-03').
get_dob(Name, DateOfBirth) :-
    dob(Name, DateOfBirth).

get_name(DateOfBirth, Name) :-
    dob(Name, DateOfBirth).

%OUTPUT:

%?- get_dob(john, DateOfBirth).
%DateOfBirth = '1990-05-15'.


%?- get_name('1995-12-03', Name).
%Name = emily.
