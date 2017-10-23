
#program cumulative(n).

1{
approach(D1,I) : door(D1);
gothrough(D2,I) : door(D2);
goto(O,I) : object(O);
}1 :- not noop(I), I>0, I=n-1.

noop(I) :- noop(I), I>0, I=n-1.

#show approach/2.
#show gothrough/2.
#show goto/2.