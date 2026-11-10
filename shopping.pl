
% Initial shopping list
shopping :-
    shopping([coffee, milk, chocolate, apple, juice]).

% Display the menu
shopping(List) :-
    nl,
    write('** SHOPPING LIST **'), nl,
    write('d. display all items.'), nl,
    write('a. Add an item to the list.'), nl,
    write('e. exit.'), nl,
    write('ENTER YOUR CHOICE: '),
    read(Choice),
    process_choice(Choice, List).

% Display all items using recursion
display_items([]).

display_items([Head|Tail]) :-
    write(Head), nl,
    display_items(Tail).

% Display option
process_choice(d, List) :-
    display_items(List),
    shopping(List).

% Add option
process_choice(a, List) :-
    write('Enter the item you want to add it: '),
    read(Item),
    NewList = [Item|List],
    write('The item has been added.'), nl,
    shopping(NewList).

% Exit option
process_choice(e, _) :-
    write('Goodbye!'), nl.

% Invalid choice
process_choice(_, List) :-
    write('Invalid choice!'), nl,
    shopping(List).
