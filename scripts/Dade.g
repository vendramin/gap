p := 5;;
m := 7;;

list := AllSmallGroups(Size, p^m, Exponent, p, NilpotencyClassOfGroup, 3);;
tables := List(list, CharacterTable);

for c in Combinations([1..Size(list)], 2) do
  x := tables[c[1]];
  y := tables[c[2]];
  if Irr(x) = Irr(y) then
    Display(IdGroup(UnderlyingGroup(x)));
    Display(IdGroup(UnderlyingGroup(y)));
    break;
  fi;
od;


