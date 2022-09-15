p := 3;
m := 6;

list := AllSmallGroups(Size, p^m, Exponent, p^2);;
tables := List(list, CharacterTable);

for c in Combinations([1..Size(list)], 2) do
  x := tables[c[1]];
  y := tables[c[2]];
  if not NrConjugacyClasses(x) = NrConjugacyClasses(y) then
    continue;
  fi;
  if not Set(CharacterDegrees(x))=Set(CharacterDegrees(y)) then
    continue;
  fi;
  m_y := Irr(y);
  PowerMap(y, p^m);
  if not TransformingPermutationsCharacterTables(x, y) = fail then
    Display([IdGroup(UnderlyingGroup(x)), IdGroup(UnderlyingGroup(y))]);
    break;
  fi;
od;


