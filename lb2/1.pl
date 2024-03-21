%Задание 1. Сформировать новый список из всех четных элементов исходного списка
%Частный случай: если исходный список пуст, то результатом является пустой список.
even_elements([], []).
% Правило для случая, когда голова исходного списка четная. 
even_elements([H|T], [H|Result]) :-
    0 is H mod 2, % Проверяем, что H четное.
    even_elements(T, Result).

% Правило для случая, когда голова исходного списка нечетная.
even_elements([H|T], Result) :-
    \+ 0 is H mod 2, % Проверяем, что H нечетное.
    even_elements(T, Result).
%?-even_elements([2, 2, 3, 3, 3, 88, 4, 43, 56], Result).
