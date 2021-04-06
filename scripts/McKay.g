McKay := function(G, p)
  local N, n, m;

  N := Normalizer(G, SylowSubgroup(G, p));
  n := Number(Irr(G), x->Degree(x) mod p <> 0);
  m := Number(Irr(N), x->Degree(x) mod p <> 0);

  if n = m then
    return true;
  else
    return false;
  fi;
end;

# We test McKay's conjecture for M11

LogTo("McKay.log");

gr := MathieuGroup(11);;

for p in PrimeDivisors(Order(gr)) do
  Print(McKay(gr,p), "\n");
od;
