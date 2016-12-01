likes(john, cheese).
likes(mary, cheese).
likes(bob, meat).
similar(X,Y) :- likes(X,Z), likes(Y,Z).
