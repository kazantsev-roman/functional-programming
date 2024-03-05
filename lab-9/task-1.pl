% 1.a Создать базу данных для отношений parent,male,female.

parent(bill, joe).
parent(bill, ann).
parent(sue, joe).
parent(sue, ann).
parent(paul, jim).
parent(mary, jim).
parent(joe, tammy).
parent(ann, bob).
parent(jim, bob).

male(bill).
male(paul).
male(joe).
male(jim).
male(bob).

female(sue).
female(mary).
female(ann).
female(tammy).

% 1.b Составить вопрос и найти в базе данных бабушку для bob.

grandmother(X, Y) :-
    parent(X, Z), parent(Z, Y), female(X).

?- grandmother(mary, bob).

% 1.c Составить вопрос и найти в базе данных внука.

grandson(X, Y) :-
    parent(Y, Z), parent(Z, X), male(X).

?- grandson(bob, paul).

% 1.d Составить вопрос и найти в базе данных сестру для jim, включив в базу дaнных  правило сестра (sister (X,Y)). different(X,Y) задается как  X \= Y.

sister(X, Y) :-
    sibling(X, Y), female(X).
sibling(X, Y) :-
    parent(Z, X), parent(Z, Y), different(X, Y).
different(X, Y) :-
    X \= Y.

?- sister(ann, jim).

% 1.e Определите отношение "тётя" (aunt (X,Y)), используя правило для sister (X,Y). ?- aunt(ann,tammy) дает ответ -Yes.

aunt(X, Y) :-
    parent(Z, Y), sister(X, Z).

?- aunt(ann, tammy).

% 1.f Определите отношение "кузин"- cousin(X,Y). Кузин(а) - это двоюродный брат или сестра. ?- cousin(bob,tammy) дает ответ -Yes.

cousin(X, Y) :-
    parent(A, X), parent(B, Y), sibling(A, B), different(X, Y).

?- cousin(bob, tammy).
