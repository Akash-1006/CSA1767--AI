location(spoon, kitchen).
location(tv, hall).
location(knife, kitchen).
location(book, living_room).
location(phone, bedroom).
find_location(Item, Location) :-
    location(Item, Location).
