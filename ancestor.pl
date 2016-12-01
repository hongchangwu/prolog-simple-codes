parent(p1, p2).
parent(p2, p3).
parent(p3, p4).
ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).
