% Опишите рисунок базой данных, состоящей из 9 фактов об отрезках.

seg(1, point(1, 11), point(14, 11)).
seg(2, point(2, 4), point(13, 4)).
seg(3, point(2, 2), point(9, 2)).
seg(4, point(3, 1), point(3, 10)).
seg(5, point(7, 10), point(13, 10)).
seg(6, point(8, 0), point(8, 13)).
seg(7, point(10, 3), point(10, 12)).
seg(8, point(11, 3), point(11, 13)).
seg(9, point(12, 2), point(12, 12)).

% правило, определяющее пересекающиеся отрезки.

cross(N, M, point(X, Y), NL, ML) :-
    seg(N, point(X1, Y), point(X2, Y)),
    seg(M, point(X, Y1), point(X, Y2)),
    between(Y1, Y2, Y),
    between(X1, X2, X),
    linelength(N, NL),
    linelength(M, ML).

linelength(N, L) :-
  seg(N, point(X1, Y1), point(X2, Y2)),
  sqrt((X2 - X1) * (X2 - X1) + (Y2 - Y1) * (Y2 - Y1), L).