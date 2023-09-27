female(pam).
female(liz).
female(pat).
female(ann).
male(jim).
male(bob).
male(tom).
male(peter).
parent(pam,bob).
parent(tom,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).
parent(bob,peter).
parent(peter,jim).
mother(X,Y):- parent(X,Y),female(X).
father(X,Y):- parent(X,Y),male(X).
haschild(X):- parent(X,_).
sister(X,Y):- parent(Z,X),parent(Z,Y),female(X),X\==Y.
brother(X,Y):-parent(Z,X),parent(Z,Y),male(X),X\==Y.
grandmother(X,Y):- parent(X,Z),parent(Z,Y),female(X).
grandfather(X,Y):- parent(X,Z),parent(Z,Y),male(X).
prima(X,Y):- sister(Z,X),parent(Z,W),parent(Y,W),female(X),X\==Y.
prima(X,Y):- brother(Z,X),parent(Z,W),parent(Y,W),female(X),X\==Y.
primo(X,Y):- sister(Z,X),parent(Z,W),parent(Y,W),male(X),X\==Y.
primo(X,Y):- brother(Z,X),parent(Z,W),parent(Y,W),male(X),X\==Y.