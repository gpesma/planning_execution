room(l_1).
room(l_2).
room(l_3).

door(d_1).
door(d_2).
door(d_3).

hasdoor(l_1,d_1).
hasdoor(l_1,d_2).
hasdoor(l_2,d_2).
hasdoor(l_2,d_3).
hasdoor(l_3,d_2).
hasdoor(l_3,d_3).

acc(l_1,l_2).
acc(l_1,l_3).
acc(l_2,l_3).


dooracc(R1,D,R2) :- hasdoor(R1,D), hasdoor(R2,D), R1 != R2, door(D), room(R1), room(R2).
dooracc(R1,D,R2) :- dooracc(R2,D,R1).

acc(R1,R1) :- room(R1).
acc(R1,R2) :- acc(R2,R1), room(R1), room(R2).
acc(R1,R2) :- acc(R1,R3), acc(R2,R3), room(R1), room(R2), room(R3).
